`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:40:06 08/18/2020 
// Design Name: 
// Module Name:    EX_MEM 
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
module EX_MEM(
	input clk,
	// Memory Control Signals
	input 		 in_MemRead, in_MemWrite,
	
	// Branch Control Signals
	input			 in_Branch,
	input [15:0] in_BranchTarget, // PC+2+Immediate
	// WriteBack Control Signals
	input 		 in_MemtoReg, in_RegWrite,
	
	// Other Inputs
	input [15:0] in_ALUResult,
	input			 in_Zero,
	input [15:0] in_ReadData_2,
	
	// Write Register for Write back stage
	input	[2:0] in_WriteRegister,
	
	
	//Outputs
	output	reg				O_MemRead, O_MemWrite,
	output	reg				O_Branch,
	output	reg 	[15:0]	O_BranchTarget,
	output	reg				O_MemtoReg, O_RegWrite,
	output	reg	[15:0] 	O_ALUResult,
	output	reg				O_Zero, 
	output 	reg 	[15:0]	O_Write_Data,
	output	reg	[2:0]		O_WriteRegister
    );
	 
	 
	 
	always@(negedge clk ) begin
		O_MemRead  			<= in_MemRead ;
		O_MemWrite  		<= in_MemWrite ;
		O_Branch    		<= in_Branch;
		O_BranchTarget		<= in_BranchTarget ;
		O_MemtoReg			<= in_MemtoReg ;
		O_RegWrite			<= in_RegWrite;
		O_ALUResult			<= in_ALUResult;
		O_Zero				<= in_Zero;
		O_Write_Data		<= in_ReadData_2;
		O_WriteRegister	<= in_WriteRegister;
	end 

endmodule
