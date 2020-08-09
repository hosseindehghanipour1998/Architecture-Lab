`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:16:16 08/09/2020
// Design Name:   ALU
// Module Name:   G:/GitRepositories/8th Semester/Architecture Lab 2020/MIPS/Codes/ALU_Test_1.v
// Project Name:  MIPS
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

module ALU_Test_1;

	// Inputs
	reg [15:0] input_A;
	reg [15:0] input_B;
	reg [2:0] ALU_Control;
	reg [15:0] Result;
	reg Zero;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.input_A(input_A), 
		.input_B(input_B), 
		.ALU_Control(ALU_Control), 
		.Result(Result), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		input_A = 10;
		input_B = 20;
		ALU_Control = 0;
		Result = 0;
		Zero = 0;

		// Wait 100 ns for global reset to finish
		#100;
		if(Result == 30 ) $display("Correct Add"); 
		if(Result != 30 ) $display("Wrong Add"); 
		#10
		ALU_Control = 1;
		input_A = 10;
		input_B = 20;
		
		#100;
		if(Result == -10 ) $display("Correct Sub"); 
		if(Result != -10 ) $display("Wrong Sub");
		#10
		ALU_Control = 7;
		input_A = 10;
		input_B = 20;
		
		#100;
		if(Result == 1 ) $display("Correct SLT"); 
		if(Result != 1 ) $display("Wrong SLT"); 
		#10
		ALU_Control = 5;
		input_A = 6;
		input_B = 2;
		
		#100;
		if(Result == 2 ) $display("Correct AND"); 
		if(Result != 2 ) $display("Wrong AND"); 
        
		// Add stimulus here


	end
      
endmodule

