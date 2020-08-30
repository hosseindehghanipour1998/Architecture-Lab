`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:26 10/23/2019 
// Design Name: 
// Module Name:    Control_Unit 
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
module Control_Unit(OP_CODE, RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch, ALUOp);
	input [5:0] OP_CODE;
	output reg RegDst, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch = 0;
	output reg [1:0] ALUOp;
	
	always @(*) begin
		if (OP_CODE == 6'b000000) begin 	
			RegDst = 1;
			ALUSrc = 0;
			MemtoReg = 0;
			RegWrite = 1;
			MemRead = 0;
			MemWrite = 0;
			Branch = 0;
			ALUOp = 2'b10;
		end 
		else if (OP_CODE == 6'b100011) begin
			RegDst = 0;
			ALUSrc = 1;
			MemtoReg = 1;
			RegWrite = 1;
			MemRead = 1;
			MemWrite = 0;
			Branch = 0;
			ALUOp = 2'b00;
		end
		else if (OP_CODE == 6'b101011) begin // sw
			ALUSrc = 1;
			RegWrite = 0;
			MemRead = 0;
			MemWrite = 1;
			Branch = 0;
			ALUOp = 2'b00;
			RegDst = 1'bX;
			MemtoReg = 1'bX;
		end 
		else if (OP_CODE == 6'b000100) begin 
			ALUSrc = 0;
			RegWrite = 0;
			MemRead = 0;
			MemWrite = 0;
			Branch = 1;
			ALUOp = 2'b01;
		end
		//else begin 
			//Branch = 0;
		//end
	end 
endmodule
