`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:31:48 11/13/2019 
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
module ID_EX(clk, HIT, CONTROL, IMMEDIATE, RD, RT, CONTROL_OUT, IMMEDIATE_OUT, READ_DATA_1, READ_DATA_2, PC, PC_OUT,
					RD_OUT, RT_OUT, READ_DATA_1_OUT, READ_DATA_2_OUT, HIT_OUT);
	
	input 	clk;
	input 	HIT;
	input 	[8:0] CONTROL;
	input 	[31:0] IMMEDIATE;
	input 	[4:0] RD, RT;
	input 	[31:0] READ_DATA_1, READ_DATA_2;
	input 	[31:0] PC;
	
	output	[31:0] PC_OUT; 
	output 	HIT_OUT;
	output reg 	[8:0] CONTROL_OUT;
	output reg 	[31:0] IMMEDIATE_OUT;
	output reg 	[4:0] RD_OUT, RT_OUT;
	output reg 	[31:0] READ_DATA_1_OUT, READ_DATA_2_OUT;
	

	
	always @(negedge clk) begin
		#3 if(HIT) begin 
			READ_DATA_1_OUT = READ_DATA_1;
			READ_DATA_2_OUT = READ_DATA_2;
			RD_OUT = RD;
			RT_OUT = RT;
			CONTROL_OUT = CONTROL;
			IMMEDIATE_OUT = IMMEDIATE;
		end
	end
	
	assign PC_OUT = PC;
	assign HIT_OUT = HIT;
	
endmodule
