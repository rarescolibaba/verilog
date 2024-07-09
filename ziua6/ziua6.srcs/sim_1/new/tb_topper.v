`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2024 12:04:44 PM
// Design Name: 
// Module Name: tb_topper
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


module tb_topper;
    reg clk;
    reg [11:0] sw;
    reg [3:0] bt;
    wire [6:0] c;
    wire [3:0] a;
    
    wire [11:0] first, second;
    assign first = topper.first;
    assign second = topper.second;
    
    wire [1:0] debugCMD;
    assign debugCMD = topper.debugCMD;
    
    
    /*
    output [3:0] a,
    output [6:0] c,
    input clk,
    input [11:0] sw,
    input [3:0] bt
    */
    topper dut(a, c, clk, sw, bt);
    
    initial begin
        #5 sw = 12'b0; bt = 4'b0;
        #5 sw = 12'hDED; bt = 4'b1001;
        #5 sw = 12'h5EC; bt = 4'b0101;
        #5 bt = 4'b0;
    end
    
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end
    
    initial begin
        #300 $finish;
    end
endmodule
