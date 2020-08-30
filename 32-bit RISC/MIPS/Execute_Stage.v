`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:45:14 11/27/2019 
// Design Name: 
// Module Name:    Execute_Stage 
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
module Execute_Stage(REG_DST, ALU_SRC, ALU_OP, READ_DATA_1, READ_DATA_2, IMMEDIATE, RD, RT, PC, CONTROL, HIT,
						BRANCH_TARGET, ALU_RESULT, ZERO, WRITE_DATA, WRITE_REGISTER, CONTROL_OUT, HIT_OUT);
		
		input 	REG_DST, ALU_SRC, HIT;
		input 	[31:0] READ_DATA_1, READ_DATA_2;
		input 	[31:0] IMMEDIATE;
		input 	[4:0]	RT, RD;
		input		[1:0]	ALU_OP;
		input 	[31:0] PC;
		input 	[4:0] CONTROL;
		
		output	[4:0] CONTROL_OUT;
		output	[31:0] ALU_RESULT;
		output	[31:0] WRITE_DATA;
		output	[31:0] BRANCH_TARGET;
		output	[4:0] WRITE_REGISTER;
		output	ZERO, HIT_OUT;

		Add add (
			 .INPUT_1(PC), 
			 .INPUT_2(IMMEDIATE << 2), 
			 .RESULT(BRANCH_TARGET)
		);
		 
		ALU_control alu_control (
			 .FUNCTION(IMMEDIATE[5:0]), 
			 .ALU_OP(ALU_OP), 
			 .ALU_CONTROL(ALU_CONTROL)
		);
		
		wire 	[2:0] ALU_CONTROL;
		wire	[31:0] READ_DATA_2_SELECTED;
		
		assign READ_DATA_2_SELECTED = ALU_SRC ? IMMEDIATE : READ_DATA_2 ;
		
		ALU alu (
			 .INPUT_1(READ_DATA_1), 
			 .INPUT_2(READ_DATA_2_SELECTED), 
			 .CONTROL(ALU_CONTROL), 
			 .ZERO(ZERO), 
			 .ALU_RESULT(ALU_RESULT)
		);
		
		assign WRITE_REGISTER = REG_DST ? RT : RD;
		assign WRITE_DATA = READ_DATA_2;
		assign CONTROL_OUT = CONTROL;
		assign HIT_OUT = HIT;

endmodule
