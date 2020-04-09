`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:59:51 04/02/2020
// Design Name:   ALU
// Module Name:   G:/GitRepositories/8th Semester/Architecture Lab 2020/HW 2/HW2/test4.v
// Project Name:  HW2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:54:47 04/02/2020
// Design Name:   ALU
// Module Name:   G:/GitRepositories/8th Semester/Architecture Lab 2020/HW 2/HW2/test3.v
// Project Name:  HW2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test4;

	// Inputs
	reg [15:0] input_A;
	reg [15:0] input_B;
	reg [2:0] control_bits;

	// Outputs
	wire [15:0] output_O;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.input_A(input_A), 
		.input_B(input_B), 
		.control_bits(control_bits), 
		.output_O(output_O), 
		.zero(zero)
	);

	initial begin
						// Initialize Inputs
		input_A = 0;
		input_B = 0;
		control_bits = 0;

		// Wait 100 ns for global reset to finish
		#100;
		input_A = 11 ;
		input_B = 3 ;

		
		// ============ ATTENTIONS ================
		//	* 1 - 100NS is required between changing the control signal bits.
		//	* 2 - 10NS is required after changing the control bits and the if-statement in order to give the ALU 
		//			enough time to claculate the results before if-statement evaluation.
		//========================================
		
		// ADD
		control_bits = 0 ;
		#10;
		if ( output_O != 14 ) $display(" Add Failed !");
		else $display("ADD  Successful !");
		
		
		
		#100;
		// SUB
		control_bits = 1 ;
		#10;
		if ( output_O != 8 ) $display("SUB Failed !");
		else $display("SUB  Successful !");
		
		
		
		#100;
		// AND
		control_bits = 2 ;
		#10;
		if ( output_O != 3 ) $display("AND Failed !");
		else $display("AND  Successful !");
		
		
		
		#100;
		// OR
		control_bits = 3 ;
		#10;
		if ( output_O != 11 ) $display("OR Failed !");
		else $display("OR  Successful !");
		
		
		#100;
		// SLT
		control_bits = 4 ;
		#10;
      if ( output_O != 1 ) $display("SLT Failed !");
		else $display("SLT  Successful !");
		
		#100
		// Testing Zero Flag : 
		input_A = 7 ;
		input_B = 7 ;
		control_bits = 1 ;
		#10;
		if ( output_O != 0 ) $display("Zero Failed !");
		else $display("Zero Flag  Successful !");

		
	end
      
endmodule




