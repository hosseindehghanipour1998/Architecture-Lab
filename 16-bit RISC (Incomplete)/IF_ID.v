`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:29 08/15/2020 
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
module IF_ID(
	input 		 		  clk,
	input  		[15:0]  PC_plus_two,
	input  		[15:0]  instruction,
	output reg	[15:0]  O_PC_plus_two,
	output reg	[15:0]  O_instruction
    );
	 
	 initial begin
		O_instruction = 0;
		O_PC_plus_two = 0;
	 end
	 
	 always@(negedge clk ) begin
			O_instruction <= instruction ;
			O_PC_plus_two <= PC_plus_two ;
	 
	 end 


endmodule
