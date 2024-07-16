`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2024 11:17:17 AM
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


module top(
    input clk
    );
    wire [31:0] addr, sum_result, instruction, RDram, extended_num;
    wire [31:0] RD1reg, RD2reg, WDreg, ALUb, ALUout;
    wire [4:0] RA1reg, RA2reg, WAreg;
    
    // Semnale si intrarile lor
    wire REGDST; // WA_mux
    wire REGWRITE; // reg_bank
    wire EXTOP; // EXT_sign
    wire ALUSRC; // ALU_b_mux
    wire [3:0] ALUOP; // ALU_ctr
    wire ZERO; // MAIN_CONTROL
    wire MEMWRITE; // DM
    wire MEM2REG; // WD_mux
    
    localparam PC_increment = 32'h0000_0004;

    assign RA1reg = instruction[25:21];
    assign RA2reg = instruction[20:16];

    PC program_counter(addr, clk, sum_result);
    sum_Nbit pc_sum(sum_result, addr, PC_increment);

    ROM im(instruction, addr);

    mux2to1_Nbit #(5) WA_mux(WAreg, RA2reg, instruction[15:11], REGDST);
    registers_bank reg_bank(RD1reg, RD2reg, clk, RA1reg, RA2reg, WAreg, WDreg, REGWRITE);
    EXT_sign sign_extend(extended_num, EXTOP, instruction[15:0]);
    
    mux2to1_Nbit ALU_b_mux(ALUb, RD2reg, extended_num, ALUSRC);
    ALU calc(ALUout, ZERO, RD1reg, ALUb, ALUOP);

    RAM dm(RDram, clk, RD2reg, ALUout, MEMWRITE);
    mux2to1_Nbit WD_mux(WDreg, RDram, ALUout, MEM2REG);

    main_control mc(REGDST, REGWRITE, EXTOP, ALUSRC, ALUOP, MEMWRITE, MEM2REG, ZERO, instruction[31:26], instruction[5:0]);
endmodule
