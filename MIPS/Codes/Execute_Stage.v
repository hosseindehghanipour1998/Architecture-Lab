`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:09:07 08/18/2020 
// Design Name: 
// Module Name:    Execute_Stage 
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
module Execute_Stage(
	input [15:0] 	in_Read_Data_1,
	input [15:0] 	in_Read_Data_2,
	input [15:0] 	in_Immediate,
	input 		 	in_ALUSrc,
	input	[1:0]  	in_ALUOp,
	input [15:0]	in_PC_plus_two,
	//outputs
	output [15:0]	O_ALUResult,
	output 			O_Zero,
	output [15:0]	O_addResult 
    );
	 
	 wire [15:0] outMux_inALU ;
	 wire [2:0] outALUControl_inALU ;
	 
	 ALU ALU (
		 .input_A(in_Read_Data_1), 
		 .input_B(outMux_inALU), 
		 .ALU_Control(outALUControl_inALU), 
		 .Result(O_ALUResult), 
		 .Zero(O_Zero)
    );

	ALU_Control ALU_Control (
		 .ALUOp(in_ALUOp), 
		 .Function(in_Immediate[3:0]), 
		 .ALUcnt(outALUControl_inALU)
	 );
	 
	 Mux Execute_Mux (
    .input0(in_Read_Data_2), 
    .input1(in_Immediate), 
    .out(outMux_inALU), 
    .select(in_ALUSrc)
    );

	
	assign O_addResult = ( in_Immediate << 1 ) + (in_PC_plus_two) ;





endmodule
