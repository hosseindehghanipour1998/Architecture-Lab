`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:55:34 08/13/2020
// Design Name:   ALU_Control
// Module Name:   G:/GitRepositories/8th Semester/Architecture Lab 2020/MIPS/Codes/ALU_Control_Test_1.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_Control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_Control_Test_1;

	// Inputs
	reg [1:0] ALUOp;
	reg [3:0] Function;

	// Outputs
	wire [2:0] ALUcnt;

	// Instantiate the Unit Under Test (UUT)
	ALU_Control uut (
		.ALUOp(ALUOp), 
		.Function(Function), 
		.ALUcnt(ALUcnt)
	);

	initial begin
		ALUOp = 2'b11;
		Function = 4'bxxxx;
		
		#100;
		ALUOp = 2'b01;
		Function = 4'bxxxx;
		
		#100;
		ALUOp = 2'b00;
		Function = 4'b0000;
		
		#100;
		ALUOp = 2'b00;
		Function = 4'b0001;
		
		#100;
		ALUOp = 2'b00;
		Function = 4'b0010;
		
		#100;
		ALUOp = 2'b00;
		Function = 4'b0011;
		
		#100;
		ALUOp = 2'b00;
		Function = 4'b0100;
		
		#100;
		ALUOp = 2'b10;
		Function = 4'bxxxx;
        
		// Add stimulus here

	end
      
endmodule

