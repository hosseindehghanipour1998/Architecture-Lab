`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:03 10/23/2019 
// Design Name: 
// Module Name:    PC 
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
module PC(clk, HIT, PC_INPUT, ADDRESS);
	
	input 	clk, HIT;
	input 	[31:0] PC_INPUT;
	output 	[31:0] ADDRESS;
	
	reg [31:0] pc = 0;
	
	always @(posedge clk) begin
		#1 if (HIT) begin
			pc = PC_INPUT;
		end
	end

	assign ADDRESS = pc;	
endmodule
