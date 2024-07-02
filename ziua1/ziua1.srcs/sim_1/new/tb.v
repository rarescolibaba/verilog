`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2024 03:37:53 PM
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
    reg a, b;
    wire [1:0] o;

    AND_1 dut(a, b, o);

    initial begin
        a = 0; b = 0;
        #5 a = 1;
        #5 b = 1;
        #5 a = 0;
        #5 b = 0;
        #5 $finish;
    end

endmodule
