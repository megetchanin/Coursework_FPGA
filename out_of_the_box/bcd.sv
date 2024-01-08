`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2023 02:13:39
// Design Name: 
// Module Name: BCD
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


module BCD(
input logic [15:0] bin_in, input logic clk, input logic rst, output logic [15:0] dec_out,
input logic data_from_sensor_rcvd, output logic data_from_bcd_trcvd
    );

enum logic [2:0] {RESET = 3'd0, IDLE= 3'd1, START = 3'd2, SHIFT = 3'd3, ADD = 3'd4, DONE = 3'd5} prev_state, next_state;
logic [15:0] bin;
logic [15:0] bcd;
logic [3:0] i;

// sequential logic for FSM
always_ff @ (posedge rst or posedge clk)
    begin : FSM
        if (rst)
            prev_state <= RESET;
        else
            prev_state <= next_state;
    end : FSM
// combination transition logic
always_comb
    begin : choose_state
        case(prev_state)
            RESET:
                begin : go_to_idle
                    next_state = IDLE;
                end : go_to_idle
            IDLE:
                begin
                    if (data_from_sensor_rcvd)
                        next_state = START;
                    else
                        next_state = IDLE;
                    end
            START:
                begin : go_to_shift
                    next_state = SHIFT;
                end : go_to_shift
            SHIFT:
                begin : go_to_done_or_add
                    if(i == 4'd14)
                        next_state = DONE;
                    else
                        next_state = ADD;
                end : go_to_done_or_add
            ADD:
                begin : return_to_shift
                    next_state = SHIFT;
                end : return_to_shift
            DONE:
                begin : return_to_start
                    next_state = IDLE;
                end : return_to_start
        endcase
    end : choose_state

// combination output logic
always_ff @(posedge clk) 
    begin : state_job
        case(prev_state)
            RESET:
                begin : reset_job
                    bin <= 0;
                    bcd <= 0;
                    i <= 0;
                    dec_out <= 0;
                end : reset_job
            IDLE:
                begin
                    bin <= 0;
                    data_from_bcd_trcvd <= 0;
                    dec_out <= bcd;
                end
            START:
                begin : start_job
                    dec_out <= 0;
                    bin <= bin_in;
                    bcd <= 0;
                end : start_job
            SHIFT:
                begin : shift_job
                    bcd <= {bcd[14:0], bin[13]};
                    bin <= {bin[14:0], 1'b0};
                    i <= i + 4'd1;
                end : shift_job 
            ADD:
                begin : add_job
                    if (bcd[3:0] > 4'd4)
                        bcd[3:0] <= bcd[3:0] + 4'd3;
                    if (bcd[7:4] > 4'd4)
                        bcd[7:4] <= bcd[7:4] + 4'd3;
                    if (bcd[11:8] > 4'd4)
                        bcd[11:8] <= bcd[11:8] + 4'd3;
                    if (bcd[15:12] > 4'd4)
                        bcd[15:12] <= bcd[15:12] + 4'd3;
                end : add_job
            DONE:
                begin : done_job
                    dec_out <= bcd;
                    i <= 0;
                    data_from_bcd_trcvd <= 1;
                end : done_job
        endcase
    end : state_job
endmodule : BCD
