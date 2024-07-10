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
        addr = 0; en = 1;
        #2 addr = 8'h00; din = 32'hDEADC0DE;
        #2 addr = 8'h01; din = 32'hCAFEBABE;
        #2 addr = 8'h00;
        #2 addr = 8'h00; din = 32'hABADCAFE;
        #2 addr = 8'h01;
        #2 addr = 8'h00;
        #2 addr = 8'h01;
    end
    
    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end
    
    initial begin
        #20 $finish;
    end
endmodule
