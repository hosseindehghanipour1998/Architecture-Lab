`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:19:32 08/13/2020
// Design Name:   PC
// Module Name:   G:/GitRepositories/8th Semester/Architecture Lab 2020/MIPS/Codes/PC_Test_1.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_Test_1;

	// Inputs
	reg clk;
	reg [15:0] next_instruction_address;

	// Outputs
	wire [15:0] instruction_address;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.clk(clk), 
		.next_instruction_address(next_instruction_address), 
		.instruction_address(instruction_address)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		next_instruction_address = 2;

		// Wait 100 ns for global reset to finish
		#100;
		clk = 1 ;
		
		#100;
		clk = 0 ;
		next_instruction_address = 4 ;
		// when clk is zero we should set the input values
		// so that when clk is One the writin operation
		// would be carried out correctly.
		
		#100;
		clk = 1 ;
        
		// Add stimulus here

	end
      
endmodule

