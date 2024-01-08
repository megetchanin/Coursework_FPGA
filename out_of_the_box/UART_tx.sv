`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2023 21:31:45
// Design Name: 
// Module Name: UART_tx
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_tx
#(parameter
DATA_WIDTH = 8)
   (output logic sig,
    input logic [DATA_WIDTH-1:0] data,
    input  logic valid,
    output logic ready,
    input logic  clk,
    input logic  rst);

   typedef enum logic [1:0] {STT_DATA,
                             STT_STOP,
                             STT_WAIT
                             } statetype;

   statetype                 state;

   logic [DATA_WIDTH-1:0]     data_r;
   logic                      sig_r;
   logic                      ready_r;
   logic                      internal_clk;
   logic [17:0]               cnt_clk;
   logic [3:0]                byte_number;

   
   
   always_ff @(posedge clk) begin
        if (rst)
            begin
                cnt_clk <= 0;
                internal_clk <= 0;
            end
        else
        begin
            cnt_clk <= cnt_clk + 18'd302;
            internal_clk <= cnt_clk[17];
        end
   end

   always_ff @(posedge internal_clk) begin
         if (rst)
            begin
                sig_r <= 1;
                ready_r <= 0;   
            end
         else
         case(state)
           STT_DATA: begin
                if (byte_number == DATA_WIDTH)
                begin
                    state <= STT_WAIT;
                    sig_r   <= 1;
                end
                else
                    sig_r <= data_r[byte_number];
                    byte_number <= byte_number + 1;
           end

           STT_WAIT: begin
              if(!ready_r) begin
                 ready_r <= 1;
              end
              else if(valid) begin
                 state    <= STT_DATA;
                 sig_r    <= 0;
                 data_r   <= data;
                 ready_r  <= 0;
                 byte_number <= 0;
                 end
              else begin
                 sig_r    <= 1;
                 data_r   <= 0;
                 ready_r  <= 1;
                 byte_number <= 0;
              end
           end

           default: begin
              state <= STT_WAIT;
           end
         endcase
      end

   assign sig   = sig_r;
   assign ready = ready_r;

endmodule
