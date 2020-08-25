`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:42:24 08/09/2020
// Design Name:   ALU
// Module Name:   G:/GitRepositories/8th Semester/Architecture Lab 2020/MIPS/Codes/ALU_Test_3.v
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

module ALU_Test_3;

	// Inputs
	reg [15:0] input_A;
	reg [15:0] input_B;
	reg [2:0] ALU_Control;

	// Outputs
	wire [15:0] Result;
	wire Zero;

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
		
		// ADD
		input_A = 10;
		input_B = 20;
		ALU_Control = 0;

		// Wait 100 ns for global reset to finish
		#100;
		if(Result == 30) $display("Correct ADD");
		else  $display("Wrong ADD ");
		
		
		// SUB
		input_A = 15;
		input_B = 10;
		ALU_Control = 1;
		

		#100
		if(Result == 5 ) $display("Correct SUB ");
		else $display("Wrong SUB ");


      // NOT
		input_A = 1;
		input_B = 20;
		ALU_Control = 2;
		
		#100
		if(Result == 65534) $display("Correct NOT");
		else $display("Wrong NOT");
			
		//LSL
		input_A = 2;
		input_B = 1;
		ALU_Control = 3;
		
		#100
		if(Result == 4) $display("Correct LSL");
		else $display("Wrong LSL");
		
		
		//LSR
		input_A = 4;
		input_B = 1;
		ALU_Control = 4;
		
		#100
		if(Result==2) $display("Correct  LSR");
		else $display("Wrong LSR");
		
		//AND
		input_A = 6;
		input_B = 2;
		ALU_Control = 5;
		
		#100
		if(Result == 2) $display("Correct  AND");
		else $display("Wrong AND");
		
		//OR
		input_A = 6;
		input_B = 2;
		ALU_Control = 6;
		
		#100
		if(Result == 6) $display("Correct OR");
		else $display("Wrong OR");


		//OR
		input_A=4;
		input_B=3;
		ALU_Control = 7;
		
		#100
		if(Result==1) $display("input_A is less than input_B");
		if(Result==0) $display("input_A is more than or equal input_B");
		// Add stimulus here
		

	end

	
endmodule

