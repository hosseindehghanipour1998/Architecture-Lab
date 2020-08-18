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
		 // Inputs 
		 .clk(clk), 
		 .In_RegWrite(), // From Next Stages
		 .instruction(O_instruction), 
		 .write_register(), // From Next Stages
		 .write_Data(), // From Next Stages ( WB )
		 // Outputs
		 .read_data_1(decode_read_data_1), 
		 .read_data_2(decode_read_data_2), 
		 .immediate(decode_immediate), 
		 .RegDst(cnt_RegDst), 
		 .ALUSrc(cnt_ALUSrc), 
		 .MemtoReg(cnt_MemtoReg),  
		 .MemRead(cnt_MemRead), 
		 .MemWrite(cnt_MemWrite), 
		 .Branch(cnt_Branch), 
		 .Out_RegWrite(cnt_RegWrite),
		 .ALUOp(cnt_ALUOp)
    );
	
	ID_EX ID_EX (
		 
		 // Inputs
		 .clk(clk),
		 .in_PC_plus_two(PC_plus_two), 
		 .in_Read_data_1(decode_read_data_1), 
		 .in_Read_data_2(decode_read_data_2), 
		 .in_immediate(decode_immediate), 
		 .in_ALU_Src(cnt_ALUSrc), 
		 .in_ALUOp(cnt_ALUOp), 
		 .in_RegDest(cnt_RegDst), 
		 .in_rt(O_instruction[9:7]), 
		 .in_rd(O_instruction[6:4]), 
		 .in_MemRead(cnt_MemRead), 
		 .in_MemWrite(cnt_MemWrite), 
		 .in_Branch(cnt_Branch), 
		 .in_MemtoReg(cnt_MemtoReg), 
		 .in_RegWrite(cnt_RegWrite), 
		 
		 //Outputs
		 .O_PC_plus_two(), 
		 .O_Read_data_1(), 
		 .O_Read_data_2(), 
		 .O_immediate(), 
		 .O_ALU_Src(), 
		 .O_ALUOp(), 
		 .O_RegDest(), 
		 .O_rt(), 
		 .O_rd(), 
		 .O_MemRead(), 
		 .O_MemWrite(), 
		 .O_Branch(), 
		 .O_MemtoReg(), 
		 .O_RegWrite()
    );

wire IDEX_2_Execute ;

// ============= Execute ===============


endmodule
