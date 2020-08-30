`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:12:34 11/27/2019 
// Design Name: 
// Module Name:    Execute 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 	Inputs:
//						• RegDst (Register Destination from Control Unit)
//						• ALUSrc (ALU Source from Control Unit)
//						• ALUOp (ALU Operation from Control Unit)
//						• ReadData 1 & 2
//						• Sign Extended Immediate
//						• Instruction[20:16] & [15:11]
//
//						Outputs:
//						• Branch Target
//						• ALU Result
//						• Zero signal
//						• Write Data (for Memory Stage)
//						• Write Register (for WriteBack Stage)
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Execute(REG_DST, ALU_SRC, ALU_OP, READ_DATA_1, READ_DATA_2, IMMEDIATE, RD, RT,
						BRANCH_TARGET, ALU_RESULT, ZERO, WRITE_DATA, WRITE_REGISTER);
		
		input 	[31:0] READ_DATA_1, READ_DATA_2;
		input 	[31:0] IMMEDIATE;
		input 	[4:0]	RT, RD;
		input		[2:0]	ALU_OP;
		input 	REG_DST, ALU_SRC;
			
		output	[31:0] ALU_RESULT;
		output	[31:0] WRITE_DATA;
		output	[31:0] BRANCH_TARGET;
		output	[4:0] WRITE_REGISTER;
		output	ZERO;
		
		
endmodule
