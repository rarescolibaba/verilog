`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 12:25:12 AM
// Design Name: 
// Module Name: tb
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


module tb;
    parameter N = 16;
    reg [N-1:0] a, b, result;
    reg [3:0] op;
    wire [N-1:0] o;
    wire bad_flow, bad_op, zero;

    ALU #(N) dut(o, bad_flow, bad_op, zero, a, b, op);

// opcodes
// 0 add                    (can bad_flow)
// 1 sub                    (can bad_flow)
// 2 shl
// 3 shr
// 4 equal                  (uses zero)
// 5 greater than           (uses zero)
// 6 less than              (uses zero)
// 7 onward are reserved    (bad_op)

    task multiply;
        output reg [N-1:0] result;
        integer i;
        reg [N-1:0] old_a, old_b;
        reg [3:0] old_op;
        begin
            old_a = a;
            old_b = b;
            result = 0;
            if (old_a != 0 & old_b != 0) begin
                old_op = op;
                op = 0;
                result = old_a;
                // suboptimal loop. always takes 2nd arg, not smallest
                for (i = old_b - 1; i > 0; i = i - 1) begin
                    a = old_a;
                    b = result;
                    #5 result = o;
                end
                op = old_op;
            end
            a = old_a;
            b = old_b;
        end
    endtask

    initial begin
        #5 a = 2; b = 2; op = 0;
        #5 op = 4;
        #5 a = 3; b = 7;
        #5 op = 1;
        #5 op = 5;
        #5 op = 2;
        #5 op = 6;
        #5 op = 3;
        #5 op = 7;
        #5 a = 3; b = 3; multiply(result);
        #5 a = 5; b = 6; multiply(result);
        #5 a = 0; b = 1; multiply(result);
        #5 a = 1; b = 0; multiply(result);
    end
    initial begin
        #125 $finish;
    end
endmodule
