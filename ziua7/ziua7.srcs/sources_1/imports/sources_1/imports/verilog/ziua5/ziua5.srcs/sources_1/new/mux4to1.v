`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/08/2024 12:05:06 PM
// Design Name: 
// Module Name: mux4to1_4bit
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


module mux4to1_Nbit #(parameter N = 4) (
    output [N-1:0] out,
    input [N-1:0] a,
    input [N-1:0] b,
    input [N-1:0] c,
    input [N-1:0] d,
    input [N-1:0] sel
    );
    
    assign out = sel[1] ? (sel[0] ? d : c) : (sel[0] ? b : a);
endmodule
