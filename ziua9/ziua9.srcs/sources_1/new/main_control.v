`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 11:29:28 AM
// Design Name: 
// Module Name: main_control
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


module main_control(
    output reg REGDST,
    output reg REGWRITE,
    output reg EXTOP,
    output reg ALUSRC,
    output reg [3:0] ALUOP,
    output reg MEMWRITE,
    output reg MEM2REG,
    input ZERO,
    input [5:0] opcode,
    input [5:0] func
    );
    
    always @(*) begin
        MEMWRITE = 1'b1;
        MEM2REG = 1'b1;
        if (~opcode) begin
            EXTOP = 1'b0;
            ALUSRC = 1'b0;
            case (func)
                6'b10_0000: ALUOP <= 4'b0010; // ADD
                6'b10_0010: ALUOP <= 4'b0110; // SUB
                6'b10_0100: ALUOP <= 4'b0000; // AND
                6'b10_0101: ALUOP <= 4'b0001; // OR
                6'b10_1010: ALUOP <= 4'b0111; // SLT
            endcase
        end
        else begin
            EXTOP = 1'b1;
            ALUSRC = 1'b1;
            case (opcode)
                6'b00_1000: ALUOP <= 4'b0010; // ADDI
//                6'b01_1001: ALUOP <= 4'bxxxx; // LHI
//                6'b01_1000: ALUOP <= 4'bxxxx; // LOI
            endcase
        end
    end
endmodule
