`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.12.2023 23:04:06
// Design Name: 
// Module Name: HC_SR04_TB
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


module HC_SR04_TB();

   logic                 clk, rst, push_clk;
   logic                 trig, echo; 
   logic                 go_btn;

   initial begin
      clk = 1'b0;
      push_clk = 1'b1;
      echo = 0;
   end

   
   top top(.clk(clk), .rst(rst), .trig(trig), .echo(echo), .go_btn(go_btn));
   
   always
   begin
    #5 clk <= ~clk;
   end
   
   always
   begin
    rst = 1'b1;
    #100000 rst = 1'b0;
    #1000000000;
   end
   
   always
   begin
    go_btn = 1'b0;
    #1000000 go_btn = 1'b1;
    #25000 go_btn = 1'b0;
    #10000000;
   end
   
   always @(posedge trig)
   begin
        #262000 echo = 1'b1;
        #5000000 echo = 1'b0;
   end
endmodule
