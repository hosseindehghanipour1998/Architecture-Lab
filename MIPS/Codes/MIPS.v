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


	Fetch_Stage instance_name (
		 .clk(), 
		 .PC_Src(), 
		 .branch_target(), 
		 .PC_plus_two(), 
		 .instruction()
    );
	 
	 
	 Decode_Stage instance_name (
		 .clk(), 
		 .RegWrite(), 
		 .instruction(), 
		 .write_register(), 
		 .write_Data(), 
		 .read_data_1(), 
		 .read_data_2(), 
		 .immediate(), 
		 .RegDst(), 
		 .ALUSrc(), 
		 .MemtoReg(), 
		 .RegWrite(), 
		 .MemRead(), 
		 .MemWrite(), 
		 .Branch(), 
		 .ALUOp()
    );






endmodule
