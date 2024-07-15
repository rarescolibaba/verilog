`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 11:11:31 AM
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


module ROM (
    output reg [31:0] out,
    input [31:0] addr
    );
    
    reg [7:0] rom [0:99];
    
    initial $readmemh("rom.mem", rom);
    
    always @(*) begin
        out[7:0] = rom[addr + 3];
        out[15:8] = rom[addr + 2];
        out[23:16] = rom[addr + 1];
        out[31:24] = rom[addr];
    end
endmodule