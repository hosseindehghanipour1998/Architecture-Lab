`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:56:58 08/15/2020 
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
module Decode_Stage(
	input 				clk,
	input 				In_RegWrite,
	input		[15:0]	instruction,
	input 	[2:0]		write_register,
	input 	[15:0] 	write_Data,
	output 	[15:0] 	read_data_1,
	output 	[15:0] 	read_data_2,
	output 	[15:0] 	immediate,
	output   RegDst , ALUSrc , MemtoReg ,  MemRead , MemWrite , Branch ,Out_RegWrite,
	output 	[1:0] 	ALUOp
    );
	 
	 
	 
	 
	 RegisterFile RegisterFile (
		 .clk(clk), 
		 .RegWrite(RegWrite), 
		 .write_register(write_register), 
		 .write_data(write_Data), 
		 .read_register_1(instruction[12:10]), 
		 .read_data_1(read_data_1), 
		 .read_register_2(instruction[9:7]), 
		 .read_data_2(read_data_2)
		 );
		 
		 
	 SignExtend Decode_SignExtend (
		 .in(instruction[6:0]), 
		 .out(immediate)
    );

	ControlUnit ControlUnit (
		 .OpCode(instruction[15:13]), 
		 .RegDst(RegDst), 
		 .ALUSrc(ALUSrc), 
		 .MemtoReg(MemtoReg), 
		 .RegWrite(RegWrite), 
		 .MemRead(MemRead), 
		 .MemWrite(MemWrite), 
		 .Branch(Branch), 
		 .ALUOp(ALUOp)
		 );





endmodule
