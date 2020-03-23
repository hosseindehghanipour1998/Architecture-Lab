`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:32:40 03/23/2020
// Design Name:   DFF
// Module Name:   G:/GitRepositories/8th Semester/Architecture Lab 2020/HW 1/HW1_9532250/D_FF_Test1.v
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

module D_FF_Test1;

	// Inputs
	wire d_in;
	wire clk;

	// Outputs
	 reg q_out;

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

		// Wait 100 ns for global reset to finish
		#25;
		d_in = 1 ;
		#25 ;
		d_in = 0 ;

		// Add stimulus here

	end
	
	always@(*)begin
	
	#30 ;
	clk = ~clk ;
	
	end
      
endmodule

