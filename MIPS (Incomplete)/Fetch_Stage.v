`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:00:55 08/15/2020 
// Design Name: 
// Module Name:    Fetch_Stage 
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
module Fetch_Stage(
	input clk,
	input PC_Src , 
	input [15:0] branch_target,
	output [15:0] PC_plus_two,
	output [15:0] instruction
    );
	 // Wires
	 wire [15:0] instruction_address ;
	 wire [15:0] next_instruction_address ;
	 assign PC_plus_two = instruction_address + 2 ;

	 
	 
	 // Order is not important 
	 // all elements would be executed simultaneously.
	 


	PC PC (
		 .clk(clk), 
		 .next_instruction_address(next_instruction_address), 
		 .instruction_address(instruction_address)
		 );
		 
	 
	 Mux PC_Mux (
		 .input0(PC_plus_two), 
		 .input1(branch_target), 
		 .out(next_instruction_address), 
		 .select(PC_Src)
    );


	Instruction_Mem Instruction_Mem (
		 .address(instruction_address), 
		 .instruction(instruction)
		 );






endmodule
