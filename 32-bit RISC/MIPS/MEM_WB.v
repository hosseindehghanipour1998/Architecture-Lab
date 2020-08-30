`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:07:58 12/24/2019 
// Design Name: 
// Module Name:    MEM_WB 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Inputs:
//						• clock
//						• hit
//						• alu_result (from Alu)
//						• writeReg (write register for write back stage)
//						• read_data (from data memory)
//						• mem_to_reg (Control Signal)
//						• reg_write (Control Signal)
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MEM_WB(clk, HIT, ALU_RESULT, WRITE_REGISTER, READ_DATA, CONTROL,
						 ALU_RESULT_OUT, WRITE_REGISTER_OUT, READ_DATA_OUT, CONTROL_OUT);
	input 	clk, HIT;
	input		[31:0] ALU_RESULT;
	input 	[31:0] READ_DATA;
	input 	[4:0]	WRITE_REGISTER;
	input 	[1:0] CONTROL;
	
	output reg [31:0] ALU_RESULT_OUT;
	output reg [31:0] READ_DATA_OUT;
	output reg [4:0]	WRITE_REGISTER_OUT;
	output reg [1:0] CONTROL_OUT;
	
	always @(negedge clk) begin
		#1 if (HIT) begin
			ALU_RESULT_OUT = ALU_RESULT;
			WRITE_REGISTER_OUT = WRITE_REGISTER;
			READ_DATA_OUT = READ_DATA;
			CONTROL_OUT = CONTROL;
		end
	end


endmodule
