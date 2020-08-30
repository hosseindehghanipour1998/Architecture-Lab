`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:17 10/23/2019 
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
module Fetch_Stage(clk, EX_PC_ADDRESS, PC_SRC_Cnt, HIT, INSTRUCTION, PC);
	
	input 	[31:0] EX_PC_ADDRESS;
	input 	clk;
	input 	PC_SRC_Cnt;
	
	output 	[31:0] INSTRUCTION;
	output 	[31:0] PC;
	output 	HIT;
	
	
	wire hit; 
	wire [31:0] pc_address;
	wire [127:0] data_line;
	wire [31:0] instruction;
	
	reg [31:0] next_pc_address;
	
	always @(*) begin
		case (PC_SRC_Cnt)
			1'b0 : next_pc_address <= pc_address + 4;
			1'b1 : next_pc_address <= EX_PC_ADDRESS;
		endcase
	end
	
	PC pc (.clk(clk), 
			 .HIT(hit), 
			 .PC_INPUT(next_pc_address), 
			 .ADDRESS(pc_address)
			 );
			 
	Instruction_Memory instruction_memory (.ADDRESS(pc_address), 
														.clk(clk), 
														.INSTRUCTION_SET(data_line)
														);
	
	Cache cache (.clk(clk), 
					 .ADDRESS(pc_address), 
					 .INSTRUCTION_SET(data_line), 
					 .INSTRUCTION(instruction), 
					 .HIT(hit)
					 );
					 
	assign HIT = hit;
	assign INSTRUCTION = instruction;
	assign PC = next_pc_address;
	
endmodule
