`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 12:49:11 AM
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
    output reg [N-1:0] o,
    input [N-1:0] a,
    input [N-1:0] b,
    input sel
    );
    always @(*) begin
        case (sel)
            0: o = a;
            1: o = b;
        endcase
    end
endmodule
