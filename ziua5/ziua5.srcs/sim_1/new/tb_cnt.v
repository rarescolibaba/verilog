`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/08/2024 11:46:31 AM
// Design Name: 
// Module Name: tb_cnt
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


module tb_cnt;
    reg clock;
    wire [1:0] out;
    cnt dut(out, clock);

    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end
    
    initial begin
        #100 $finish;
    end
endmodule
