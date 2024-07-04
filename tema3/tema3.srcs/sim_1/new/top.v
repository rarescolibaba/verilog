`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2024 05:20:45 PM
// Design Name: 
// Module Name: top
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


module top #(parameter N = 8) (
    output [N-1:0] plout,
    output sout,
    input clk,
    input reset,
    input enable,
    input readps,
    input writeps,
    input [N-1:0] plin,
    input sin
);
    dff bis [N-1:0] (plout, clk, reset, enable, readps, writeps, plin);

//    always @(posedge clk) begin
//        if (enable) begin
//            case ({readps, writeps})
//                2'b00: pi <= ;
//            endcase
//        end
//    end
    
    assign bis[0].si = sin;
    genvar i;
    generate 
        for (i = 1; i < N; i = i + 1) begin
            assign bis[i].si = bis[i-1].so;
        end
    endgenerate
    assign sout = bis[N-1].so;
endmodule