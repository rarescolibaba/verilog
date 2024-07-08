`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 11:45:17 AM
// Design Name: 
// Module Name: div
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


module div(
    output reg clkout,
    input clkin
    );
    reg [31:0] target = 1 << 16, i = 1;
    always @(posedge clkin)
        if (i < target) i = i + 1;
        else begin
            i = 1;
            clkout = ~clkout;
        end
endmodule
