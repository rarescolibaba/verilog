`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2024 11:22:56 AM
// Design Name: 
// Module Name: topper
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


module topper(
    output [3:0] a,
    output [6:0] c,
    input [3:0] bt,
    input en
    );
    wire [31:0] out;
    wire [11:0] MUX_result, ALU_result;
    wire [7:0] addr;
    wire [3:0] error_char;
    wire [1:0] debugCMD;
    wire bad_flow, bad_op, zero, bt0filtered;
    reg [11:0] first, second;
    reg [3:0] op;

    bt_filter bt0filter(bt0filtered, clk, bt[0]);
    pc_cnt pc_counter(addr, bt0filtered);

endmodule
