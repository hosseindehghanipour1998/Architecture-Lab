`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:26:59 03/24/2020
// Design Name:   SRR_8_bit
// Module Name:   G:/GitRepositories/8th Semester/Architecture Lab 2020/HW 1/HW1_9532250/SRR_test6.v
// Project Name:  HW1_9532250
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SRR_8_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SRR_test6;

	// Inputs
	reg clk;
	reg d_in;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	SRR_8_bit uut (
		.clk(clk), 
		.d_in(d_in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		d_in = 0;

		// Wait 100 ns for global reset to finish
		#100
		d_in = 1;
		#100
		d_in = 0;
		#100
		d_in = 0;
		#100
		d_in = 1; 
		#100
		d_in = 1;
		#100
		d_in = 0;
        
		// Add stimulus here

	end
	
	always #50 clk = ~clk ;
      
endmodule

