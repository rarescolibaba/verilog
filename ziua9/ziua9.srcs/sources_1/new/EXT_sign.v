`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 11:52:37 AM
// Design Name: 
// Module Name: EXT_sign
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


module EXT_sign(
    output [31:0] extended_num,
    input EXTOP,
    input [15:0] raw_num
    );
    
    assign extended_num = EXTOP ? {{16{raw_num[15]}}, raw_num} : 32'b0;
endmodule
