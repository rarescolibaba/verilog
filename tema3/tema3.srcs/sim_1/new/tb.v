`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 05:01:56 PM
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
    reg clk, reset, enable, readps, writeps, sin;
    reg [N-1:0] plin;
    wire [N-1:0] plout;
    wire sout;

    top #(N) dut(plout, sout, clk, reset, enable, readps, writeps, plin, sin);
    
    initial begin
        reset = 1; enable = 0; readps = 0; writeps = 0; sin = 0; plin = 0;
        #2 reset = 0; enable = 1; plin = 16'hDEAD;
        #2 enable = 0; plin = 16'hFFFF;
        #20 reset = 1;
        #2 reset = 0; enable = 1; readps = 1; writeps = 1; sin = 1;
        #2 sin = 0;
        #2 sin = 1;
        #2 sin = 0;
        #60 reset = 1; enable = 0;
        #2 reset = 0; enable = 1; readps = 1; writeps = 0; sin = 1;
        #2 sin = 1;
        #2 sin = 1;
        #2 sin = 0;
        #60 reset = 1; enable = 0;
        #2 reset = 0;
        // todo: {writeps, readps} = 01, 10 (posi/sopi)
//        #1 reset = 0; enable = 1; writeps = 1;
//        #20 reset = 1; enable = 0;
//        #1 reset = 0; enable = 1; readps = 1; writeps = 0; sin = 1'b1;
//        #1 sin = 1'b1;
//        #1 sin = 1'b1;
//        #1 sin = 1'b0;
//        #1 enable = 0;
//        #20 reset = 1;
//        #1 reset = 0;
    end
    
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end
    
    initial begin
        #150 $finish;
    end
endmodule
