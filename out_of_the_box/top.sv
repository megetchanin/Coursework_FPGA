`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2023 16:50:11
// Design Name: 
// Module Name: top
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


module top
  #(parameter
    DATA_WIDTH = 8)
    (input logic clk,
    input logic rst,
     output logic trig,
     input logic echo,
     output logic sig,
    input logic go_btn
    );
   
   logic [DATA_WIDTH-1:0] data;
   logic valid;
   logic ready;
   logic [15:0] to_bcd;
   logic [15:0] from_bcd;
   logic from_sensor_to_bcd_trcvd;
   logic from_bcd_to_sensor_rcvd;
   logic internal_clk;
   
   uart_tx uart(.sig(sig), .data(data), .valid(valid), .clk(clk), .rst(rst), .ready(ready));
   
   HC_SR04 sensor(.data_out(data), .ready_in(ready), .valid_out(valid), .out_trig(trig),
   .in_echo(echo), .clk(clk), .rst(rst), .go(go_btn), .data_to_bcd(to_bcd), .data_from_bcd(from_bcd),
   .data_to_bcd_trcvd(from_sensor_to_bcd_trcvd), .data_from_bcd_rcvd(from_bcd_to_sensor_rcvd), 
   .clk_for_bcd(internal_clk));
   
   BCD bcd(.bin_in(to_bcd), .clk(internal_clk), .rst(rst), .dec_out(from_bcd),
   .data_from_sensor_rcvd(from_sensor_to_bcd_trcvd), .data_from_bcd_trcvd(from_bcd_to_sensor_rcvd));
    
endmodule
