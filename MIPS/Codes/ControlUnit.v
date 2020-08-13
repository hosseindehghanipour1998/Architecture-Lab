`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:10:25 08/13/2020 
// Design Name: 
// Module Name:    ControlUnit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ControlUnit(
	input [2:0] OpCode ,
	output RegDst , ALUSrc , MemtoReg , RegWrite, MemRead, MemWrite, Branch, [1:0] ALUOp
    );
	
	
	// Define wires to name the states
	wire R_TYPE , LW , SW , ADDI , BEQ , SLTI ;
	assign R_TYPE 	= (OpCode == 3'b000) ? 1 : 0 ; // R-Type
	assign LW 		= (OpCode == 3'b100) ? 1 : 0 ; // LW
	assign SW 		= (OpCode == 3'b101) ? 1 : 0 ; // SW
	assign ADDI 	= (OpCode == 3'b111) ? 1 : 0 ; // addi
	assign BEQ 		= (OpCode == 3'b110) ? 1 : 0 ; // beq
	assign SLTI 	= (OpCode == 3'b001) ? 1 : 0 ; // slti
	
	// Assign Vlaues to outputs
	assign RegDst 		= (R_TYPE) 								?  1: 0; 
	assign MemtoReg 	= (LW) 									?  1: 0;
	assign RegWrite 	= (R_TYPE || LW || ADDI || SLTI) ?  1: 0;
	assign MemRead 	= (LW) 									?  1: 0;
	assign MemWrite 	= (SW) 									?  1: 0;
	assign Branch 		= (BEQ) 									?  1: 0;
	
	
	// Assign ALUOp 
	
	assign ALUOp = (R_TYPE) 				? 2'b00: 
						(LW || SW || ADDI ) 	? 2'b11:
						(BEQ) 					? 2'b01:
													  2'b10 ;	// SLTI
endmodule
