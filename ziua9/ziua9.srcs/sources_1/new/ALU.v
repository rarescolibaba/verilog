`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 11:16:24 AM
// Design Name: 
// Module Name: ALU
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


module ALU #(parameter N = 32) (
    output reg [N-1:0] o,
    output zero,
    input [N-1:0] a,
    input [N-1:0] b,
    input [3:0] op
    );

    assign zero = ~|o;

    always @(*) begin
        o = {N{1'b0}};
        case (op)
            0: o = a & b;
            1: o = a | b;
            2: o = a + b;
            3: o = a - b;
            4: o = a < b;
            5: o = ~(a | b);
            6: o = a > b;
        endcase 
    end
endmodule
