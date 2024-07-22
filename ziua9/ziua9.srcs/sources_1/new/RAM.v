`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 11:21:20 AM
// Design Name: 
// Module Name: RAM
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


module RAM (
    output [31:0] out,
    input clk,
    input [31:0] din,
    input [31:0] addr,
    input rw,
    input [15:0] inputbus,
    output [9:0] regleds
    );
    reg [7:0] ram [0:65535]; // 64 KIB
    integer i;

    initial
        for (i = 0; i < 65536; i = i + 1) begin
            ram[i] = 8'b0;
        end

    assign out = {ram[addr], ram[addr + 1], ram[addr + 2], ram[addr + 3]};

    assign regleds[9:8] = ram[65532][1:0];
    assign regleds[7:0] = ram[65533][7:0];

    always @(negedge clk) begin
        if (rw) begin
            ram[addr + 3] <= din[7:0];
            ram[addr + 2] <= din[15:8];
            ram[addr + 1] <= din[23:16];
            ram[addr] <= din[31:24];
        end
        ram[65534] <= inputbus[7:0]; // FFFE -> 0000 0000
        ram[65535] <= inputbus[15:8];// FFFF -> 0000 0000
    end
endmodule
