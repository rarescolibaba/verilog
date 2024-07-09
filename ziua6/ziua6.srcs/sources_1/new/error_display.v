`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2024 12:01:55 PM
// Design Name: 
// Module Name: error_display
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


module error_display(
    output [3:0] value,
    input bad_flow,
    input bad_op,
    input zero
    );

    assign value = bad_flow ? 4'b1000 : (bad_op ? 4'b1110 : (zero ? 4'b0010 : 4'b0000));
endmodule
