`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2024 03:37:53 PM
// Design Name: 
// Module Name: AND_1
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


module AND_1(
    input a,
    input b,
    output [1:0] o
    );
    
    assign o[0] = a ^ b;
    assign o[1] = a & b;
endmodule
