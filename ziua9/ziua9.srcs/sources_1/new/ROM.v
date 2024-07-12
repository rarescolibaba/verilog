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


module ROM #(parameter width = 32, height = 100, file = "rom.mem") (
    output reg [width-1:0] out,
    input [$clog2(height)-1:0] addr
    );
    
    reg [width-1:0] rom [height-1:0];
    
    initial $readmemh(file, rom);
    
    always @(*) out <= rom[addr];
endmodule