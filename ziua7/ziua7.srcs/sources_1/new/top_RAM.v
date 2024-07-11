`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2024 12:43:15 PM
// Design Name: 
// Module Name: top_RAM
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


module top_RAM(
    output [3:0] a,
    output [6:0] c,
    input clk,
    input [11:0] sw,
    input [2:0] bt
    );

    reg [11:0] din = 0, addr = 0;
    reg [3:0] hint_char;
    reg [1:0] debugRAM = 0;
    reg rw = 0;
    wire [11:0] MUX_result, out;

    RAM #(.width(12), .height(4096)) ram_impl(out, clk, din, addr, rw);

    mux4to1_Nbit #(12) mux(MUX_result, out, addr, val, .d(), debugRAM);
    top digits(a, c, clk, {hint_char, MUX_result});

    always @(bt)
        casex (bt)
            3'b1xx: debugRAM <= 2'b01;
            3'b01x: debugRAM <= 2'b10;
            default: debugRAM <= 2'b00;
        endcase

    always @(bt)
        casex (bt)
            3'b1x1: addr <= sw;
            3'b011: begin
                        din <= sw;
                        rw <= 1;
                    end
            default: rw <= 0;
        endcase

    always @(debugRAM)
        if (debugRAM == 2'b01) hint_char <= 4'hA;
        else hint_char <= 4'h0;
endmodule
