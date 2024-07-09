`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/08/2024 11:30:11 AM
// Design Name: 
// Module Name: dec2to4
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


module dec2to4(
    output reg [3:0] aout,
    input [1:0] ain
    );

    always @(ain) begin
        case (ain)
            2'b00: aout <= 4'b1110;
            2'b01: aout <= 4'b1101;
            2'b10: aout <= 4'b1011;
            2'b11: aout <= 4'b0111;
        endcase
    end
endmodule
