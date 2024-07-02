`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 11:45:12 AM
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
    reg [N-1:0] a, b;
    reg [3:0] op;
    wire [N-1:0] o;
    wire bad_flow, bad_op, zero;
    
    ALU #(N) dut (o, bad_flow, bad_op, zero, a, b, op);
        
    initial begin
        #5 a = 0; b = 0; op = 0;
        #5 a = 1; b = 2; op = 0;
        #5 a = 1; b = 2; op = 1;
        #5 a = {{(N-8){1'b0}}, 8'hAA}; b = 1; op = 2;
        #5 a = 64; b = 2; op = 3;
        #5 a = 1; b = 2; op = 4;
        #5 a = 100; b = 20; op = 5;
        #5 a = 24; b = 24; op = 6;
        #5 a = 13; b = 37; op = 0;
        #5 a = 1; b = 2; op = 9;
        
        #50 $finish;
    end
endmodule
