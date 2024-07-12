`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 11:41:26 AM
// Design Name: 
// Module Name: sum_Nbit
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


module sum_Nbit #(parameter N = 32) (
    output [N-1:0] sum,
    input [N-1:0] a,
    input [N-1:0] b
    );
    
    assign sum = a + b;
endmodule
