`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/08/2024 11:11:46 AM
// Design Name: 
// Module Name: digt_dec
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


module digt_dec(
    output reg [6:0] dout,
    input [3:0] din
    );

    always @(din) begin
        case (din)
            // cathodes are a b c d e f g, in this order (active on 0)
            4'b0000: dout <= 7'b0000001;
            4'b0001: dout <= 7'b1001111;
            4'b0010: dout <= 7'b0010010;
            4'b0011: dout <= 7'b0000110;
            4'b0100: dout <= 7'b1001100;
            4'b0101: dout <= 7'b0100100;
            4'b0110: dout <= 7'b0100000;
            4'b0111: dout <= 7'b0001111;
            4'b1000: dout <= 7'b0000000;
            4'b1001: dout <= 7'b0000100;
            4'b1010: dout <= 7'b0001000;
            4'b1011: dout <= 7'b1100000;
            4'b1100: dout <= 7'b1110010;
            4'b1101: dout <= 7'b1000010;
            4'b1110: dout <= 7'b0010000;
            4'b1111: dout <= 7'b0111000;
        endcase
    end
endmodule
