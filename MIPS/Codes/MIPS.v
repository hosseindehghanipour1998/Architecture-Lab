`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:43 08/15/2020 
// Design Name: 
// Module Name:    MIPS 
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
module MIPS(
	input clk 
    );
	 
	 
// =========== FETCH ==========================	 
	wire [15:0] instruction ;
	wire [15:0] O_instruction ;
	wire [15:0] PC_plus_two;
	wire [15:0] O_PC_plus_two;
	

	Fetch_Stage Fetch (
		 .clk(clk), 
		 .PC_Src(), // From Next Stages
		 .branch_target(), // From Next Stages
		 .PC_plus_two(PC_plus_two), 
		 .instruction(instruction)
    );
	

	IF_ID instance_name (
		 .clk(clk), 
		 .PC_plus_two(PC_plus_two), 
		 .instruction(instruction), 
		 .O_PC_plus_two(O_PC_plus_two), 
		 .O_instruction(O_instruction)
		 );	
// ============== DECODE =======================	  
	 wire [15:0] decode_read_data_1 ; 
	 wire [15:0] decode_read_data_2 ; 
	 wire [15:0] decode_immediate ;
	 wire cnt_RegDst , cnt_ALUSrc ,cnt_MemtoReg ,cnt_RegWrite ,cnt_MemRead , cnt_MemWrite ,cnt_Branch ;
	 wire [1:0] cnt_ALUOp ;
	 
	 Decode_Stage Decode (
		 .clk(clk), 
		 .RegWrite(cnt_RegWrite), // From Next Stages
		 .instruction(O_instruction), 
		 .write_register(), // From Next Stages
		 .write_Data(), // From Next Stages
		 .read_data_1(decode_read_data_1), 
		 .read_data_2(decode_read_data_2), 
		 .immediate(decode_immediate), 
		 .RegDst(cnt_RegDst), 
		 .ALUSrc(cnt_ALUSrc), 
		 .MemtoReg(cnt_MemtoReg),  
		 .MemRead(cnt_MemRead), 
		 .MemWrite(cnt_MemWrite), 
		 .Branch(cnt_Branch), 
		 .ALUOp(cnt_ALUOp)
    );






endmodule
