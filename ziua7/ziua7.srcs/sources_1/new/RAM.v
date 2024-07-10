`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2024 11:47:51 AM
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


module RAM #(parameter width = 32, height = 100) (
    output reg [width-1:0] out,
    input clk,
    input [width-1:0] din,
    input [$clog2(height)-1:0] addr,
    input rw
    );
    reg [width-1:0] ram [height-1:0];
    integer i;

    initial
        for (i = 0; i < height; i = i + 1) begin
            ram[i] = {width{1'b0}};
        end

    always @(posedge clk) begin
        if (rw)
            ram[addr] <= din;
        else
            out <= ram[addr];
    end
endmodule
