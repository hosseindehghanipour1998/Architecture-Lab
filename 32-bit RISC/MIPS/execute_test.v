`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:24:21 11/27/2019
// Design Name:   Execute_Stage
// Module Name:   D:/XilinxProject/New folder/MIPS/execute_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Execute_Stage
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module execute_test;

	// Inputs
	reg REG_DST;
	reg ALU_SRC;
	reg [2:0] ALU_OP;
	reg [31:0] READ_DATA_1;
	reg [31:0] READ_DATA_2;
	reg [31:0] IMMEDIATE;
	reg [4:0] RD;
	reg [4:0] RT;
	reg [31:0] PC;

	// Outputs
	wire [31:0] BRANCH_TARGET;
	wire [31:0] ALU_RESULT;
	wire ZERO;
	wire [31:0] WRITE_DATA;
	wire [4:0] WRITE_REGISTER;

	// Instantiate the Unit Under Test (UUT)
	Execute_Stage uut (
		.REG_DST(REG_DST), 
		.ALU_SRC(ALU_SRC), 
		.ALU_OP(ALU_OP), 
		.READ_DATA_1(READ_DATA_1), 
		.READ_DATA_2(READ_DATA_2), 
		.IMMEDIATE(IMMEDIATE), 
		.RD(RD), 
		.RT(RT),
		.PC(PC),
		.BRANCH_TARGET(BRANCH_TARGET), 
		.ALU_RESULT(ALU_RESULT), 
		.ZERO(ZERO), 
		.WRITE_DATA(WRITE_DATA), 
		.WRITE_REGISTER(WRITE_REGISTER)
	);

	initial begin
		// Initialize Inputs
		REG_DST = 0;
		ALU_SRC = 0;
		ALU_OP = 2'b10;
		READ_DATA_1 = 14;
		READ_DATA_2 = 17;
		IMMEDIATE = 32'h00010020;
		RD = 2;
		RT = 5;
		PC = 10;

		// Wait 100 ns for global reset to finish
		#100;

		REG_DST = 0;
		ALU_SRC = 0;
		ALU_OP = 2'b01;
		READ_DATA_1 = 17;
		READ_DATA_2 = 17;
		IMMEDIATE = 32'h00010000;
		RD = 2;
		RT = 5;
		PC = 10;

		// Wait 100 ns for global reset to finish
		#100;


		REG_DST = 0;
		ALU_SRC = 0;
		ALU_OP = 2'b10;
		READ_DATA_1 = 14;
		READ_DATA_2 = 17;
		IMMEDIATE = 32'h00010025;
		RD = 2;
		RT = 5;
		PC = 10;

		// Wait 100 ns for global reset to finish
		#100;

        
		// Add stimulus here

	end
      
endmodule

