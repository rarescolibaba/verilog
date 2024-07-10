`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2024 11:59:11 AM
// Design Name: 
// Module Name: tb_RAM
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


module tb_RAM;
    reg clk, rw;
    reg [7:0] addr;
    reg [31:0] din;
    wire [31:0] out;

    RAM raaam(out, clk, din, addr, rw);
    
    initial begin
        addr = 0; din = 0; rw = 0;
        #2 addr = 8'h00; din = 32'hDEADC0DE; rw = 0;
        #2 addr = 8'h01; din = 32'hCAFEBABE; rw = 0;
        #2 addr = 8'h00; rw = 1;
        #2 addr = 8'h00; din = 32'hABADCAFE; rw = 0;
        #2 addr = 8'h01; rw = 1;
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
