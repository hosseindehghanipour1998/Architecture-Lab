`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:31:45 08/13/2020
// Design Name:   ControlUnit
// Module Name:   G:/GitRepositories/8th Semester/Architecture Lab 2020/MIPS/Codes/ControlUnit_Test_2.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ControlUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ControlUnit_Test_2;

	// Inputs
	reg [2:0] OpCode;

	// Outputs
	wire RegDst;
	wire ALUSrc;
	wire MemtoReg;
	wire RegWrite;
	wire MemRead;
	wire MemWrite;
	wire Branch;
	wire [1:0] ALUOp;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit uut (
		.OpCode(OpCode), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.ALUOp(ALUOp)
	);

initial begin
		OpCode = 3'b000;
		
		#100;
		OpCode = 3'b100;
		
		#100;
		OpCode = 3'b101;
		
		#100;
		OpCode = 3'b111;
		
		#100;
		OpCode = 3'b110;
		
		
		#100;
		OpCode = 3'b001;
		
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

