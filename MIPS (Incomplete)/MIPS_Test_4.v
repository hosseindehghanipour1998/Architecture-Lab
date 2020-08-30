`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:02:04 08/25/2020
// Design Name:   MIPS
// Module Name:   C:/Users/hosse/Desktop/New folder/MIPS_V.2/MIPS/Codes/MIPS_Test_4.v
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

module MIPS_Test_4;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	MIPS uut (
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
     	always #100 clk = ~clk;     
endmodule

