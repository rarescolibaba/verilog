`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 12:48:01 AM
// Design Name: 
// Module Name: mux2to1_Nbit
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


module mux2to1_Nbit #(parameter N = 8) (
    output [N-1:0] o,
    input [N-1:0] a,
    input [N-1:0] b,
    input sel
    );
    not g1[N-1:0] (not_sel, sel);
    and g2[N-1:0] (a_not_sel, a, not_sel);
    and g3[N-1:0] (b_sel, b, sel);
    or g4[N-1:0] (o, a_not_sel, b_sel);
endmodule
