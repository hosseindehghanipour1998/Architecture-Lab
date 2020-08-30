`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:50:51 11/27/2019 
// Design Name: 
// Module Name:    EX_MEM 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 	inputs
//		• RegWrite ( Control Signal for write back stage )
//		• MemtoReg (Control Signal for write back stage )
//		• memRead (Control Signal for memory stage )
//		• memWrite (Control Signal for memory stage )
//		• Branch (Control Signal for memory stage )
//		• Zero
//		• AluResult [31:0]
//		• ReadData2 [31:0]
//		• RegDst [4:0]
//		• Hit
//		• Clock
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module EX_MEM(clk, CONTROL, ZERO, ALU_RESULT, READ_DATA_2, DST_REG, HIT, BRANCH_TARGET,
					CONTROL_OUT, ZERO_OUT, ALU_RESULT_OUT, READ_DATA_2_OUT, DST_REG_OUT, BRANCH_TARGET_OUT, HIT_OUT);
					
	input 	clk, ZERO, HIT;
	input 	[4:0] CONTROL;
	input 	[4:0] DST_REG;
	input		[31:0] ALU_RESULT;
	input		[31:0] BRANCH_TARGET;
	input 	[31:0] READ_DATA_2;
	
	output reg ZERO_OUT, HIT_OUT;
	output reg [4:0] CONTROL_OUT;
	output reg [4:0] DST_REG_OUT;
	output reg [31:0] BRANCH_TARGET_OUT;
	output reg [31:0] ALU_RESULT_OUT;
	output reg [31:0] READ_DATA_2_OUT;
	
	always @(negedge clk) begin
		#2 if (HIT) begin
			ZERO_OUT = ZERO;
			CONTROL_OUT = CONTROL;
			DST_REG_OUT = DST_REG;
			ALU_RESULT_OUT = ALU_RESULT;
			READ_DATA_2_OUT = READ_DATA_2;
			BRANCH_TARGET_OUT = BRANCH_TARGET;
			HIT_OUT = HIT;
		end
	end
	
endmodule
