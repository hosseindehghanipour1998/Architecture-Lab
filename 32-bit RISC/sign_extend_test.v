`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:08:40 11/13/2019
// Design Name:   Sign_Extend
// Module Name:   D:/XilinxProject/New folder/MIPS/sign_extend_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Sign_Extend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sign_extend_test;

	// Inputs
	reg [15:0] INPUT;

	// Outputs
	wire [31:0] OUTPUT;

	// Instantiate the Unit Under Test (UUT)
	Sign_Extend uut (
		.INPUT(INPUT), 
		.OUTPUT(OUTPUT)
	);

	initial begin
		// Initialize Inputs
		INPUT = 16'b0010111110111101;


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

