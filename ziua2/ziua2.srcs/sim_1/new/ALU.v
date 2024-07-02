`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 11:45:12 AM
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


module ALU #(parameter N = 8) (
    output reg [N-1:0] o,
    output reg bad_flow,
    output reg bad_op,
    output reg zero,
    input [N-1:0] a,
    input [N-1:0] b,
    input [3:0] op
    );
    always @(*) begin
        bad_op = 0;
        bad_flow = 0;
        o = {N{1'bx}};
        zero = 1'bx;
        case (op)
            0: begin
                o = a + b;
                if (o < a || o < b)
                    bad_flow = 1;
            end
            1: begin
                o = a - b;
                if (o > a || o > b)
                    bad_flow = 1;
            end
            2: o = a << b;
            3: o = a >> b;
            4: zero = a == b;
            5: zero = a > b;
            6: zero = a < b;
            default: bad_op = 1;
        endcase
    end
endmodule
