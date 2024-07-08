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
    input clock,
    input [15:0] din
    );
    wire [3:0] mout;
    wire [1:0] cnt_out;
    wire clock;
    
    cnt count(cnt_out, clock);
    mux4to1_4bit mux(mout, din[15:12], din[11:8], din[7:4], din[3:0], cnt_out);
    dec2to4 dec(a, cnt_out);
    digt_dec digits(c, mout);
endmodule
