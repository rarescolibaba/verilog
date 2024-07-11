`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2024 12:49:01 PM
// Design Name: 
// Module Name: ROM
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


module ROM #(parameter width = 32, height = 100, file = "rom.mem") (
    output reg [width-1:0] out,
    input clk,
    input [$clog2(height)-1:0] addr,
    input en
    );
    
    reg [width-1:0] rom [height-1:0];
    
    initial $readmemh(file, rom);
    
    always @(posedge clk)
        if (en)
            out <= rom[addr];
endmodule
