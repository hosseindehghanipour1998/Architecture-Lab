`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:50:03 11/27/2019 
// Design Name: 
// Module Name:    Memory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
// 				inputs: 
/*					• Branch (from Control Unit)
					• MemWrite (from Control Unit)
					• MemRead (from Control Unit)
					• Zero,( from ALU)
					• [31:0] ALUResult ( from ALU)
					• [31:0] read_data2 (from register file)
					• Clock
						
					outputs:
					• PCSrc
					• [31:0] read_data (from data memory)
					• [31:0] ALUResult_wb (from ALU to write back stage)
*/
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Memory(clk, ALU_RESULT, READ_DATA_2, CONTROL, ZERO, WRITE_REGISTER, HIT,
					PC_SRC, MEMORY_READ_DATA, ALU_RESULT_WB, WRITE_REGISTER_OUT, CONTROL_OUT, HIT_OUT);
		
	input 	clk, ZERO, HIT;
	input 	[4:0] CONTROL;
	input		[4:0] WRITE_REGISTER;
	input 	[31:0] ALU_RESULT;
	input 	[31:0] READ_DATA_2;
	
	output 	reg PC_SRC = 0;
	output  	HIT_OUT;
	output 	[1:0] CONTROL_OUT;
	output	[4:0]	WRITE_REGISTER_OUT;
	output 	[31:0] MEMORY_READ_DATA;
	output	[31:0] ALU_RESULT_WB;
	
	
	Data_Memory data_memory	(
		 .clk(clk), 
		 .ADDRESS(ALU_RESULT), 
		 .WRITE_DATA(READ_DATA_2), 
		 .MEM_WRITE(CONTROL[2]), 
		 .MEM_READ(CONTROL[1]), 
		 .READ_DATA(MEMORY_READ_DATA)
   );
	
	assign 	ALU_RESULT_WB = ALU_RESULT;
	assign 	WRITE_REGISTER_OUT = WRITE_REGISTER;
	assign 	CONTROL_OUT = CONTROL[4:3];
	assign 	HIT_OUT = HIT;
	
	always @(*) begin
		PC_SRC = ZERO & CONTROL[0];
	end
	
endmodule
