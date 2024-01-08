`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.12.2023 23:03:59
// Design Name: 
// Module Name: HC-SR04
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

// Using 100 MHz internal  
module HC_SR04
  #(parameter
    DATA_WIDTH = 8)
    (
    output logic [DATA_WIDTH-1:0] data_out,
    input logic ready_in,
    output logic valid_out,
    output logic out_trig,
    input logic in_echo,
    input logic clk,
    input logic rst,
    input logic go,
    output logic [15:0] data_to_bcd,
    output logic data_to_bcd_trcvd,
    input logic [15:0] data_from_bcd,
    input logic data_from_bcd_rcvd,
    output logic clk_for_bcd
    );
        
    logic [18:0] cnt = 0;
    logic [15:0] echo_cnt = 0;
    logic trig;
    logic valid;
    logic data_ready;
    logic [15:0] data_16;
    logic [10:0] internal_clk;
    logic ready_old;
    logic echo_old;
    
    enum logic[3:0] {RESET = 4'd0, 
    IDLE = 4'd1, 
    TRIG = 4'd2, 
    ECHO = 4'd3, 
    DATA_TO_BCD = 4'd4,
    DATA_FROM_BCD = 4'd5,
     DATA_1 = 4'd6, 
     DATA_2 = 4'd7, 
     DATA_3 = 4'd8, 
     DATA_4 = 4'd9, 
     DATA_5 = 4'd10, 
     CLEAN_PARAMS = 4'd11} prev_state, next_state; 

// using count to synchronise clock with time of impulses  
    always_ff @(posedge internal_clk[10]) 
    begin
        if (rst)
            begin
                prev_state <= RESET;
            end
        else
            begin
                prev_state <= next_state;
                ready_old <= ready_in;
                echo_old <= in_echo;
            end
    end
    
    always_comb
    begin
        case(prev_state)
            RESET:
                begin
                    if (!rst)
                        next_state = IDLE;
                    else
                        next_state = RESET;
                end
            IDLE:
                begin
                    if (go)
                        next_state = TRIG;
                    else
                        next_state = IDLE;
                end
            TRIG:
                begin
                    if (!echo_old & in_echo)
                        next_state = ECHO;
                    else
                        next_state = TRIG;
                end
            ECHO:
                begin
                    if (echo_old & !in_echo)
                        next_state = DATA_TO_BCD;
                    else
                        next_state = ECHO;
                end
            DATA_TO_BCD:
                begin
                    if (data_to_bcd_trcvd)
                        next_state = DATA_FROM_BCD;
                else
                        next_state = DATA_TO_BCD;
                end
            DATA_FROM_BCD:
                begin
                    if (data_ready)
                        next_state = DATA_1;
                else
                        next_state = DATA_FROM_BCD;
                end
            DATA_1:
                begin
                    if (ready_in & !ready_old)
                        next_state = DATA_2;
                else
                        next_state = DATA_1;
                end
            DATA_2:
                begin
                    if (ready_in & !ready_old)
                        next_state = DATA_3;
                else
                        next_state = DATA_2;
                end
            DATA_3:
                begin
                    if (ready_in & !ready_old)
                        next_state = DATA_4;
                else
                        next_state = DATA_3;
                end
            DATA_4:
                begin
                    if (ready_in & !ready_old)
                        next_state = DATA_5;
                else
                        next_state = DATA_4;
                end
            DATA_5:
                begin
                    if (ready_in & !ready_old)
                        next_state = CLEAN_PARAMS;
                else
                        next_state = DATA_5;
                end
            CLEAN_PARAMS:
                begin
                    if (!data_ready & (cnt == 0))
                        next_state = IDLE;
                else
                        next_state = CLEAN_PARAMS;
                end
        endcase 
    end     

    assign  internal_clk[0] = clk;
    for (genvar i=0; i<10; i++) begin
        always_ff @(posedge internal_clk[i])
        begin
            internal_clk[i+1] <= ~internal_clk[i+1];
            if (rst)
                internal_clk[i+1] <= '0;
        end
    end

always_ff @(posedge internal_clk[10])
    begin
        case(prev_state)
            RESET:
                begin
                echo_cnt <= 0;
                trig <= 0;
                data_out <= '0;
                data_ready <=0;
                valid <= 0;
                data_to_bcd <= 0;
                data_to_bcd_trcvd <= 0;
                end
            IDLE:
                    begin
                    cnt <= 0;
                    data_to_bcd_trcvd <= 0;
                    data_to_bcd <= 0;
                    valid <= 0;
                    end
            TRIG:
                begin           
                if (cnt >= 3)
                    trig <= 0;
                else
                    trig <= 1;
                cnt <= cnt+1; 
                end
            ECHO:
                    begin
                    echo_cnt <= echo_cnt+1;
                    cnt <= cnt+1;                    
                    end
            DATA_TO_BCD:
                begin
                    data_16 <= (echo_cnt*340) >> 6'd11;
                    if (data_16 != 0 & !data_to_bcd_trcvd)
                        begin
                        data_to_bcd <= data_16;
                        data_to_bcd_trcvd <= 1;
                        end
                    else
                        data_to_bcd_trcvd <= 0;
                end
            DATA_FROM_BCD:
                begin
                    if (data_from_bcd_rcvd)
                        data_ready <= 1;
                end
            DATA_1:
                begin
                    data_out <= data_from_bcd[11:8]+8'b00110000;
                    if (ready_in & data_ready)
                        valid <= 1;
                        data_ready <= 0;
                    if (valid)
                        valid <= ~valid;
                end
            DATA_2:
                begin
                    data_out <= data_from_bcd[7:4]+8'b00110000;
                    if (ready_in & !data_ready)
                        valid <= 1;
                        data_ready <= 1;
                    if (valid)
                        valid <= ~valid;
                end
            DATA_3:
                begin
                    data_out <= data_from_bcd[3:0]+8'b00110000;
                    if (ready_in & data_ready)
                        valid <= 1;
                        data_ready <= 0;
                    if (valid)
                        valid <= ~valid;
                end
            DATA_4:
                begin
                    data_out <= 8'd10;
                    if (ready_in & !data_ready)
                        valid <= 1;
                        data_ready <= 1;
                    if (valid)
                        valid <= ~valid;
                end
            DATA_5:
                begin
                    data_out <= 8'd13;
                    if (ready_in & data_ready)
                        valid <= 1;
                        data_ready <= 0;
                    if (valid)
                        valid <= ~valid;
                end
            CLEAN_PARAMS:
                begin
                data_ready <= 0;
                data_16 <= 0;
                valid <= 0;
                data_out <= 0;
                echo_cnt <= 0;
                cnt <= cnt+1;
                end
        endcase
    end
    
    assign valid_out = valid;
    assign out_trig = trig;
    assign clk_for_bcd = internal_clk[10];
    
endmodule
