`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 11:35:38 AM
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


module mux2to1_Nbit #(parameter N = 32) (
    output [N-1:0] o,
    input [N-1:0] a,
    input [N-1:0] b,
    input sel
    );
    
    assign o = sel ? b : a;
endmodule