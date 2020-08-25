`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:14 08/25/2020 
// Design Name: 
// Module Name:    MEM_WB 
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
module MEM_WB(	
	input 		 clk,
	input 		 in_MemtoReg ,
	input [15:0] in_ReadData ,
	input [15:0] in_ALUResult,
	
	output  reg				O_MemtoReg,
	output  reg [15:0] 	O_ReadData,
	output  reg [15:0] 	O_ALUResult
    );
	 
	 always@(negedge clk ) begin
		
		O_MemtoReg <= in_MemtoReg ;
		O_ReadData <= in_ReadData ;
		O_ALUResult <= in_ALUResult ;
		
	 end
	 
	


endmodule
