`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:55:36 10/24/2019
// Design Name:   Control_Unit
// Module Name:   C:/Users/Amirerfan/XilinxProject/New folder/MIPS/control_unit_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control_Unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module control_unit_test;

	// Inputs
	reg [5:0] OP_CODE;

	// Outputs
	wire RegDst;
	wire ALUSrc;
	wire MemtoReg;
	wire RegWrite;
	wire MemRead;
	wire MemWrite;
	wire Branch;
	wire ALUOp1;
	wire ALUOp2;

	// Instantiate the Unit Under Test (UUT)
	Control_Unit uut (
		.OP_CODE(OP_CODE), 
		.RegDst(RegDst), 
		.ALUSrc(ALUSrc), 
		.MemtoReg(MemtoReg), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.ALUOp1(ALUOp1), 
		.ALUOp2(ALUOp2)
	);

	initial begin
		// Initialize Inputs
		OP_CODE = 6'b000000;
		// Wait 100 ns for global reset to finish
		#100;
		
		OP_CODE = 6'b100011;
		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here

	end
      
endmodule

