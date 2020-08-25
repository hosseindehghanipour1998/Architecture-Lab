`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:06 08/25/2020 
// Design Name: 
// Module Name:    WriteBack_Stage 
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
module WriteBack_Stage(
	input MemtoReg ,
	input [15:0] in_ALUResult ,
	input [15:0] in_ReadData ,
	output [15:0] out_WriteData
    );


	Mux WriteBack_MUX (
		.input0(in_ReadData), 
		.input1(in_ALUResult), 
		.out(out_WriteData), 
		.select(MemtoReg)
	);



endmodule
