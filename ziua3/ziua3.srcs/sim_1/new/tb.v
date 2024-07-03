`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 11:45:17 AM
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
    reg enable, load, clkin;
    reg [15:0] datain;
    wire clkout;
    wire [15:0] _target, _i;
    
    div dut(clkout, clkin, enable, load, datain);
    
    assign _target = dut.target;
    assign _i = dut.i;
    
    initial begin
        #2 enable = 0; load = 0; datain = 0;
        #2 enable = 1; load = 1; datain = 16'h0002;
        #2 load = 0;
        #20 load = 1; datain = 16'h0001;
        #2 load = 0;
        #20 load = 1; datain = 16'h0000;
        #2 load = 0;
        #20 load = 1; datain = 16'h0005;
        #2 load = 0;
    end
    
    initial begin
        #1 clkin = 0;
        forever #1 clkin = ~clkin;
    end
    
    initial begin
        #200 $finish;
    end
endmodule
