`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 11:26:25 AM
// Design Name: 
// Module Name: registers_bank
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


module registers_bank(
    output reg [31:0] RD1,
    output reg [31:0] RD2,
    input clk,
    input [4:0] RA1,
    input [4:0] RA2,
    input [4:0] WA,
    input [31:0] WD,
    input REGWRITE
    );

    reg [31:0] registers [31:0];
    integer i;
    
    initial begin
        for (i = 0; i < 32; i = i + 1) begin
            registers[i] = 32'b0;
        end
    end

    always @(posedge clk) begin
        RD1 <= registers[RA1];
        RD2 <= registers[RA2];
        if (REGWRITE) registers[WA] <= WD;
    end
endmodule
