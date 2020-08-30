`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:33:41 10/09/2019
// Design Name:   Register_File
// Module Name:   C:/Users/architect/Amir/MIPS/register_file_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register_File
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module register_file_test;

	// Inputs
	reg [4:0] RS;
	reg [4:0] RT;
	reg [4:0] RD;
	reg clk;
	reg reg_wr;
	reg [31:0] WRITE_DATA;

	// Outputs
	wire [31:0] REGISTER_1;
	wire [31:0] REGISTER_2;

	// Instantiate the Unit Under Test (UUT)
	Register_File uut (
		.RS(RS), 
		.RT(RT), 
		.RD(RD), 
		.clk(clk), 
		.reg_wr(reg_wr), 
		.REGISTER_1(REGISTER_1), 
		.REGISTER_2(REGISTER_2), 
		.WRITE_DATA(WRITE_DATA)
	);

	initial begin
		// Initialize Inputs
		RS = 0;
		RT = 0;
		RD = 0;
		clk = 0;
		reg_wr = 0;
		WRITE_DATA = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RS = 0;
		RT = 0;
		RD = 0;
		clk = 1;
		reg_wr = 0;
		WRITE_DATA = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RS = 5;
		RT = 6;
		RD = 0;
		clk = 0;
		reg_wr = 0;
		WRITE_DATA = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RS = 0;
		RT = 0;
		RD = 0;
		clk = 1;
		reg_wr = 0;
		WRITE_DATA = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RS = 0;
		RT = 0;
		RD = 0;
		clk = 0;
		reg_wr = 0;
		WRITE_DATA = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RS = 0;
		RT = 0;
		RD = 1;
		clk = 1;
		reg_wr = 1;
		WRITE_DATA = 8;

		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here

	end
      
endmodule

