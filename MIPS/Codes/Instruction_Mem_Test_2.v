`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:15:55 08/09/2020
// Design Name:   Instruction_Mem
// Module Name:   G:/GitRepositories/8th Semester/Architecture Lab 2020/MIPS/Codes/Instruction_Mem_Test_2.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instruction_Mem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Instruction_Mem_Test_2;

	// Inputs
	reg [15:0] address;

	// Outputs
	wire [15:0] instruction;

	// Instantiate the Unit Under Test (UUT)
	Instruction_Mem uut (
		.address(address), 
		.instruction(instruction)
	);

	initial begin
		// Initialize Inputs
		address = 16'h0004;

		// Wait 100 ns for global reset to finish
		#500;
		if( instruction == 2 ) $display("Fetched Successfully");
		else $display("Fetch not Successfull ");
		
		
		address = 16'h0030;
		#500
		if( instruction == 24 ) $display("Fetched Successfully");
		else $display("Fetch not Successful");
        
		// Add stimulus here

	end
      
endmodule

