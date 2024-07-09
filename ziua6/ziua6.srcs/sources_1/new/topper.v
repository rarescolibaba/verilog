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
    input clk,
    input [11:0] sw,
    input [3:0] bt
    );
    wire [11:0] MUX_result, ALU_result;
    wire [3:0] error_char;
    wire [1:0] debugCMD;
    wire bad_flow, bad_op, zero;

    reg [11:0] first, second;
    reg [3:0] op;

    ALU #(12) calculator(ALU_result, bad_flow, bad_op, zero, first, second, op);
    // error display: 2 8 E 0
    // with inputs bad_flow, bad_op, zero
    // and output 4 digit number
    error_display err(error_char, bad_flow, bad_op, zero);
    top digits(a, c, clk, {error_char, MUX_result});
    enc3to2 debugger(debugCMD, bt);
    mux4to1_Nbit #(12) moxy(MUX_result, ALU_result, first, second, op, debugCMD);

    always @(posedge clk)
        casex (bt)
            4'b1xx1: first <= sw[11:0];
            4'b1x10: second <= sw[11:0];
            4'b1100: op <= sw[3:0];
        endcase
endmodule
