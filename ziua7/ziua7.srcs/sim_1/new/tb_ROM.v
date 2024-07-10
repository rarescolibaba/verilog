`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2024 01:02:59 PM
// Design Name: 
// Module Name: tb_ROM
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


module tb_ROM;
    reg clk, en;
    reg [7:0] addr;
    wire [31:0] out;

    ROM rooom(out, clk, addr, en);

    initial begin
        en = 0; addr = 0;
        #5 en = 1;
        #5 addr = 8'h00;
        #5 addr = 8'h03;
    end

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        #100 $finish;
    end
endmodule
