`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/08/2024 12:04:18 PM
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


module top(
    output [3:0] a,
    output [6:0] c,
    input clk,
    input [15:0] din
    );
    wire [3:0] mout;
    wire [1:0] cnt_out;
    wire divclk;
    
    div div_freq(divclk, clk);
    cnt count(cnt_out, divclk);
    mux4to1_4bit mux(mout, din[3:0], din[7:4], din[11:8], din[15:12], cnt_out);
    dec2to4 dec(a, cnt_out);
    digt_dec digits(c, mout);
endmodule
