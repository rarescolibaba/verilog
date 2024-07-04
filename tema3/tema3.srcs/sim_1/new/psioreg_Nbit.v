`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2024 12:13:21 PM
// Design Name: 
// Module Name: psioreg_Nbit
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


module psioreg_Nbit #(parameter N = 8) (
    output [N-1:0] po,
    output so,
    input clock,
    input reset,
    input enable,
    input ls,
    input si,
    input [N-1:0] pi
    );
    wire dff_clock;
    
    assign dff_clock = clock & enable;
    
    dff dff_inst [N-1:0] (dff_clock);
endmodule
