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
    output [31:0] out,
    input [31:0] addr
    );
    
    reg [7:0] rom [0:65535]; // 64 KIB
    
    initial $readmemh("rom.mem", rom);
    
    assign out = {rom[addr], rom[addr + 1], rom[addr + 2], rom[addr + 3]};
endmodule