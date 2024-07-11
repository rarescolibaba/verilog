`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2024 11:51:52 AM
// Design Name: 
// Module Name: enc3to2
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


module enc3to2(
    output [1:0] out,
    input [2:0] in
    );

    assign out = in[2] ? 2'b11 : (in[1] ? 2'b10 : (in[0] ? 2'b01 : 2'b00));
endmodule
