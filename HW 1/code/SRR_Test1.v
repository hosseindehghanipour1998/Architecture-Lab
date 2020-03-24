`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:24:36 03/24/2020
// Design Name:   DFF
// Module Name:   G:/GitRepositories/8th Semester/Architecture Lab 2020/HW 1/HW1_9532250/SRR_test1.v
// Project Name:  HW1_9532250
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SRR_test1;

	// Inputs
	reg d_in;
	reg clk;

	// Outputs
	wire q_out;

	// Instantiate the Unit Under Test (UUT)
	DFF uut (
		.d_in(d_in), 
		.clk(clk), 
		.q_out(q_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		d_in = 1;

		// Wait 100 ns for global reset to finish
		#25
		d_in = 0;
		#25
		d_in = 0;
		#25
		d_in = 1; 
		#25
		d_in = 1;
        
		// Add stimulus here

	end
	
	always #20 clk = ~clk ;
      
endmodule

