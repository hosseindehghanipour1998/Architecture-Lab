  
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:59:12 03/23/2020
// Design Name:   DFF
// Module Name:   G:/GitRepositories/8th Semester/Architecture Lab 2020/HW 1/HW1_9532250/DFF_test2.v
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

module DFF_test2;

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
		d_in = 0;
		clk = 0;
		
		//==================================================
		//Test Case 1
		
		/*
		#20 d_in = 0 ;
		#20 d_in = 1 ;
		#20 d_in = 1 ;
		#20 d_in = 0 ;\
		*/
		// =================================================
		//Test Case 2
		// Wait 100 ns for global reset to finish
		forever #40 d_in = ~ d_in;
		// Add stimulus here
		// =================================================
 
	end
	
always #10 clk = ~clk ;
      
endmodule