`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/08/2024 12:10:43 PM
// Design Name: 
// Module Name: tb_top
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


module tb_top;
    reg clock;
    reg [15:0] din;
    wire [3:0] a;
    wire [6:0] c;
    
    top dut(a, c, clock, din);
    
    initial begin
        din = 16'h1234;
        #10 din = 16'hABCD;
    end
    
    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end
    
    initial begin
        #50 $finish;
    end
endmodule
