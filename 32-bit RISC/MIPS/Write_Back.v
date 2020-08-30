`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:49:35 11/27/2019 
// Design Name: 
// Module Name:    Write_Back 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
/*			input:
			• MemtoReg
			• [31:0] read_data
			• [31:0] ALUResult
			
			output
			• [31:0] write_data
*/
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Write_Back(MEM_TO_REG, READ_DATA, ALU_RESULT, WRITE_DATA);
	input		MEM_TO_REG;
	input		[31:0] READ_DATA;
	input		[31:0] ALU_RESULT;
	
	output   [31:0] WRITE_DATA;
	
	assign WRITE_DATA = MEM_TO_REG ? READ_DATA : ALU_RESULT;

endmodule
