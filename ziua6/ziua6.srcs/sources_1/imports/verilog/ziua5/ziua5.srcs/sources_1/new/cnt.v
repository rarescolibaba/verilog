`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/08/2024 11:45:25 AM
// Design Name: 
// Module Name: cnt
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


module cnt(
    output reg [1:0] out = 0,
    input clock
    );
    always @(posedge clock)
        out <= out + 1;
endmodule
