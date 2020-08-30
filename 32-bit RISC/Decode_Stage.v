`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:51:57 10/23/2019 
// Design Name: 
// Module Name:    Decode_Stage 
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
module Decode_Stage(clk, INSTRUCTION, WRITE_REGISTER, WRITE_DATA, REGISTER_WRITE_Cnt, HIT, PC, PC_OUT,
									READ_DATA_1, READ_DATA_2, IMMEDIATE, RT, RD, Cnt, HIT_OUT);
	input 	clk;
	input 	HIT;
	input 	REGISTER_WRITE_Cnt;
	input 	[31:0] INSTRUCTION;
	input 	[31:0] WRITE_DATA;
	input 	[4:0] WRITE_REGISTER;
	input 	[31:0] PC;
	
	output	[31:0] PC_OUT;
	output 	HIT_OUT;
	output 	[31:0] READ_DATA_1, READ_DATA_2;
	output 	[31:0] IMMEDIATE;
	output 	[4:0] RT, RD;
	output 	[8:0] Cnt;
	
	Control_Unit control_unit (
		.OP_CODE(INSTRUCTION[31:26]), 
		.MemtoReg(Cnt[8]), 
		.RegWrite(Cnt[7]), 
		.MemWrite(Cnt[6]), 
		.MemRead(Cnt[5]),
		.Branch(Cnt[4]), 
		.ALUSrc(Cnt[3]), 
		.ALUOp(Cnt[2:1]), 
		.RegDst(Cnt[0])
	);
	 
	Register_File register_file (
		.clk(clk), 
		.RS(INSTRUCTION[25:21]), 
		.RT(INSTRUCTION[20:16]), 
		.RD(WRITE_REGISTER),  
		.REGISTER_1(READ_DATA_1), 
		.REGISTER_2(READ_DATA_2),
		.REGISTER_WRITE_Cnt(REGISTER_WRITE_Cnt),
		.WRITE_DATA(WRITE_DATA)
   );
	 

	Sign_Extend sign_extend (
		.INPUT(INSTRUCTION[15:0]), 
		.OUTPUT(IMMEDIATE)
   );


	assign RT = INSTRUCTION[15:11];
	assign RD = INSTRUCTION[20:16];
	assign HIT_OUT = HIT;
	assign PC_OUT = PC;
	
endmodule
