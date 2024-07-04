`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 05:01:56 PM
// Design Name: 
// Module Name: dff
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


module dff(
    output reg po,
    input clk,
    input reset,
    input enable,
    input readps,
    input writeps,
    input pi
    );
    reg so;
    wire si;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            po <= 0; so <= 0;
        end
        else if (enable) begin
            case ({writeps, readps})
                2'b00: begin
                    po <= pi;
                    so <= 1'bx;
                end
                2'b01: begin // todo
                    po <= si;
                    so <= 1'bx;
                end
                2'b10: begin // todo
                    so <= pi;
                    po <= 1'bx;
                end
                2'b11: begin
                    so <= si;
                    po <= 1'bx;
                end
            endcase
        end
    end
endmodule
