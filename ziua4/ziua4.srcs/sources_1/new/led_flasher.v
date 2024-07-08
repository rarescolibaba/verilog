`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/04/2024 12:31:18 PM
// Design Name: 
// Module Name: led_flasher
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


module led_flasher(
    output flash,
    input clock,
    input enable,
    input load_div,
    input [3:0] div_count
    );
    wire [31:0] div_mul;
    
    assign div_mul = div_count << 20;
    
    div divizor(flash, clock, enable, load_div, div_mul);
endmodule
