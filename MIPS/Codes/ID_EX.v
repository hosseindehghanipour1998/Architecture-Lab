`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:30:55 08/18/2020 
// Design Name: 
// Module Name:    ID_EX 
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
module ID_EX(

	input clk ,
	input [15:0] in_PC_plus_two,
	input [15:0] in_Read_data_1,
	input [15:0] in_Read_data_2,
	input [15:0] in_immediate,
	
	// Destination Register Select
	input 		 in_ALU_Src,
	input	[1:0]	 in_ALUOp,
	
	// Destination Register Select
	input 		 in_RegDest, // chooses between Rt & Rd
	input	[2:0]	 in_rt,
	input [2:0]	 in_rd,
	
	// Memory Control Signals
	input 		 in_MemRead, in_MemWrite,
	
	// Branch Control Signals
	input			 in_Branch,
	
	// WriteBack Control Signals
	input 		 in_MemtoReg, in_RegWrite,
	
	// Outputs
	output reg [15:0] O_PC_plus_two,
	output reg [15:0] O_Read_data_1,
	output reg [15:0] O_Read_data_2,
	output reg [15:0] O_immediate,
	output reg 			O_ALU_Src,
	output reg [1:0]  O_ALUOp,
	output reg 			O_RegDest,
	output reg [2:0] 	O_rt,
	output reg [2:0] 	O_rd,
	output reg 			O_MemRead,
	output reg 			O_MemWrite,
	output reg 			O_Branch,
	output reg 			O_MemtoReg,
	output reg 			O_RegWrite
    );
	 
	 initial begin
		O_MemRead = 0;
		O_MemWrite = 0;
		O_Branch = 0;
		O_MemtoReg = 0;
		O_RegWrite = 0;
	 end
	 
	always@(negedge clk ) begin
			O_PC_plus_two  <= in_PC_plus_two ;
			O_Read_data_1  <= in_Read_data_1 ;
			O_Read_data_2  <= in_Read_data_2;
			O_immediate		<= in_immediate ;
			O_ALU_Src		<= in_ALU_Src;
			O_ALUOp			<= in_ALUOp;
			O_RegDest		<= in_RegDest;
			O_rt				<= in_rt;
			O_rd				<= in_rd;
			O_MemRead		<= in_MemRead;
			O_MemWrite		<= in_MemWrite;
			O_Branch			<= in_Branch;
			O_MemtoReg		<= in_MemtoReg;
			O_RegWrite		<= in_RegWrite;
	end 


endmodule
