`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2024 12:49:11 AM
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
    parameter N1 = 8, N2 = 32;
    
    reg[N1-1:0] a1, b1;
    reg sel1;
    wire[N1-1:0] o1;

    mux2to1_Nbit #(N1) dut1(o1, a1, b1, sel1);
    
    initial begin
        #5 a1 = {N1{1'b0}}; b1 = {N1{1'b0}}; sel1 = 0;
        #5 a1 = {{(N1-4){1'b0}}, 4'hA}; b1 = {{(N1-4){1'b0}}, 4'hF}; sel1 = 1;
        #5 sel1 = 0;
    end
    
    reg[N2-1:0] a2, b2;
    reg sel2;
    wire[N2-1:0] o2;
    
    mux2to1_Nbit #(N2) dut2(o2, a2, b2, sel2);

    initial begin
        #5 a2 = {N1{1'b0}}; b2 = {N1{1'b0}}; sel2 = 0;
        #5 a2 = {{(N1-2){1'b0}}, 2'h3}; b2 = {{(N1-2){1'b0}}, 2'h1}; sel2 = 1;
        #5 sel2 = 0;
    end
    
    initial begin
        #25 $finish;
    end
endmodule
