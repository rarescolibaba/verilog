`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/08/2024 11:12:04 AM
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
    reg [3:0] din;
    wire [6:0] dout;

    digt_dec dut(dout, din);
    
    initial begin
        din = 4'h0;
        #10 din = 4'h1;
        #10 din = 4'h2;
        #10 din = 4'h3;
        #10 din = 4'h4;
        #10 din = 4'h5;
        #10 din = 4'h6;
        #10 din = 4'h7;
        #10 din = 4'h8;
        #10 din = 4'h9;
        #10 din = 4'hA;
        #10 din = 4'hB;
        #10 din = 4'hC;
        #10 din = 4'hD;
        #10 din = 4'hE;
        #10 din = 4'hF;
    end
    
    initial begin
        #100 $finish;
    end
endmodule
