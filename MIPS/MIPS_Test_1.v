`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:47:45 08/25/2020
// Design Name:   MIPS
// Module Name:   G:/GitRepositories/8th Semester/Architecture Lab 2020/MIPS/Codes/MIPS_Test_1.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MIPS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////


module MIPS_Test_1;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	MIPS uut (
		.clk(clk)
	);

	initial begin

		clk = 0;

	end
	
	always #10 clk = ~clk;
      
endmodule

