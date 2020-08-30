`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:21:15 11/13/2019 
// Design Name: 
// Module Name:    IF_ID 
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
module IF_ID(clk, PC, PC_OUT, INSTRUCTION_IN, INSTRUCTION_OUT, HIT, HIT_OUT);
	input 	[31:0] INSTRUCTION_IN;
	input 	HIT, clk;
	input 	[31:0] PC;
	
	output	reg [31:0] PC_OUT;
	output  	reg [31:0] INSTRUCTION_OUT;
	output 	reg HIT_OUT;
	
	always @(negedge clk) begin
		#4 if (HIT) begin
			INSTRUCTION_OUT = INSTRUCTION_IN;
			PC_OUT = PC;
		end
		HIT_OUT = HIT;
	end
	
endmodule
