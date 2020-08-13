`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:41:21 08/13/2020 
// Design Name: 
// Module Name:    ALU_Control 
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
module ALU_Control(
	input [1:0] ALUOp ,
	input [3:0] Function,
	output [2:0] ALUcnt
    );
	 
	 // Types of R_Type Operations
	 wire R_TYPE_ADD , R_TYPE_SUB, R_TYPE_AND, R_TYPE_OR, R_TYPE_SLT ;
	 assign  R_TYPE_ADD = (Function == 4'b0000) ? 1: 0;
	 assign  R_TYPE_SUB = (Function == 4'b0001) ? 1: 0;
	 assign  R_TYPE_AND = (Function == 4'b0010) ? 1: 0;
	 assign  R_TYPE_OR  = (Function == 4'b0011) ? 1: 0;
	 assign  R_TYPE_SLT = (Function == 4'b0100) ? 1: 0;
	 
	 
	 // Set ALUcnt Value
	 assign ALUcnt =  (ALUOp == 2'b11) ? 3'b000 : //Addi,LW,SW
							(ALUOp == 2'b01) ? 3'b001 : // BEQ
							(ALUOp == 2'b00 && R_TYPE_ADD) ? 3'b000 :
							(ALUOp == 2'b00 && R_TYPE_SUB) ? 3'b001 :
							(ALUOp == 2'b00 && R_TYPE_AND) ? 3'b010 :
							(ALUOp == 2'b00 && R_TYPE_OR ) ? 3'b011 :
							(ALUOp == 2'b00 && R_TYPE_SLT) ? 3'b100 :
							(ALUOp == 2'b10) 					 ? 3'b100 : //I-Type SLTI
																		3'bzzz ; 

							


endmodule
