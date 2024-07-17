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
        if (opcode == 6'b0) begin
            EXTOP = 0;
            ALUSRC = 0;
            REGDST = 1;
            REGWRITE = 1;
            MEMWRITE = 0;
            MEM2REG = 1;
            case (func)
                6'b1000_00: ALUOP = 4'b0010; // ADD
                6'b1000_10: ALUOP = 4'b0110; // SUB
                6'b1001_00: ALUOP = 4'b0000; // AND
                6'b1001_01: ALUOP = 4'b0001; // OR
                6'b1010_10: ALUOP = 4'b0111; // SLT
            endcase
        end
        else begin
            EXTOP = 1;
            ALUSRC = 1;
            REGDST = 0;
            
            case (opcode)
                6'b0010_00: begin // ADDI
                    ALUOP = 4'b0010;
                    REGWRITE = 1;
                    MEMWRITE = 0;
                    MEM2REG = 1;
                end
                6'b0001_00: begin // SW
                    ALUOP = 4'b0010;
                    REGWRITE = 0;
                    MEMWRITE = 1;
                    MEM2REG = 1;
                end
                6'b0001_01: begin // LW
                    ALUOP = 4'b0010;
                    REGWRITE = 1;
                    MEMWRITE = 0;
                    MEM2REG = 0;
                end
                default: begin
                    ALUOP = 4'b0000;
                    REGWRITE = 0;
                    MEMWRITE = 0;
                    MEM2REG = 1;
                end
            endcase
        end
    end
endmodule
