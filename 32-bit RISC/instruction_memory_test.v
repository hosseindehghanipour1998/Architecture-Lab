`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:35:30 10/09/2019
// Design Name:   Instruction_Memory
// Module Name:   C:/Users/architect/Amir/MIPS/instruction_memory_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instruction_Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module instruction_memory_test;

	// Inputs
	reg [31:0] ADDRESS;
	reg clk;

	// Outputs
	wire [127:0] INSTRUCTION_SET;

	// Instantiate the Unit Under Test (UUT)
	Instruction_Memory uut (
		.ADDRESS(ADDRESS), 
		.clk(clk), 
		.INSTRUCTION_SET(INSTRUCTION_SET)
	);

	initial begin
		// Initialize Inputs
		ADDRESS = 6;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		ADDRESS = 8;
		clk = 1;
		#100
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		ADDRESS = 9;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;
		clk = 1;
		#100;
		clk = 0;
		#100;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
      
endmodule

