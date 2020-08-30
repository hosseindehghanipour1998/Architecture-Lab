`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:39:21 12/04/2019
// Design Name:   Memory
// Module Name:   D:/XilinxProject/New folder/MIPS/memory_test.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memory_test;

	// Inputs
	reg clk;
	reg [31:0] ALU_RESULT;
	reg [31:0] READ_DATA_2;
	reg [4:0] CONTROL;
	reg ZERO;
	reg [4:0] WRITE_REGISTER;
	reg HIT;

	// Outputs
	wire PC_SRC;
	wire [31:0] MEMORY_READ_DATA;
	wire [31:0] ALU_RESULT_WB;
	wire [4:0] WRITE_REGISTER_OUT;
	wire [1:0] CONTROL_OUT;
	wire HIT_OUT;

	// Instantiate the Unit Under Test (UUT)
	Memory uut (
		.clk(clk), 
		.ALU_RESULT(ALU_RESULT), 
		.READ_DATA_2(READ_DATA_2), 
		.CONTROL(CONTROL), 
		.ZERO(ZERO), 
		.WRITE_REGISTER(WRITE_REGISTER), 
		.HIT(HIT), 
		.PC_SRC(PC_SRC), 
		.MEMORY_READ_DATA(MEMORY_READ_DATA), 
		.ALU_RESULT_WB(ALU_RESULT_WB), 
		.WRITE_REGISTER_OUT(WRITE_REGISTER_OUT), 
		.CONTROL_OUT(CONTROL_OUT), 
		.HIT_OUT(HIT_OUT)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		ALU_RESULT = 24;
		READ_DATA_2 = 0;
		CONTROL = 0;
		ZERO = 0;
		WRITE_REGISTER = 0;
		HIT = 1;

		// Wait 100 ns for global reset to finish
		#100;
		
		clk = 1;
		
		#100;
		
		clk = 0;
		READ_DATA_2 = 66;
		CONTROL = 5'b10101;
      
		#100;
		
		clk = 1;
		
		#100;
		
		clk = 0;
		READ_DATA_2 = 0;
		CONTROL = 5'b01010;
		
		#100;
		
		clk = 1;
		
		#100;
		// Add stimulus here

	end
      
endmodule

