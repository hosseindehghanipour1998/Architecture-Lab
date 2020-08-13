`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:31:41 08/13/2020
// Design Name:   RegisterFile
// Module Name:   G:/GitRepositories/8th Semester/Architecture Lab 2020/MIPS/Codes/RegisterFile_Test_2.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegisterFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegisterFile_Test_2;

	// Inputs
	reg clk;
	reg RegWrite;
	reg [2:0] write_register;
	reg [15:0] write_data;
	reg [2:0] read_register_1;
	reg [2:0] read_register_2;

	// Outputs
	wire [15:0] read_data_1;
	wire [15:0] read_data_2;

	// Instantiate the Unit Under Test (UUT)
	RegisterFile uut (
		.clk(clk), 
		.RegWrite(RegWrite), 
		.write_register(write_register), 
		.write_data(write_data), 
		.read_register_1(read_register_1), 
		.read_data_1(read_data_1), 
		.read_register_2(read_register_2), 
		.read_data_2(read_data_2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		RegWrite = 1;
		write_register = 4;
		write_data = 20;
		read_register_1 = 4;
		read_register_2 = 0;
		$display(read_data_1);
		
		#20;
		clk = 1;
		$display(read_data_1);
		
		#20;
		clk = 0;
		$display(read_data_1);
		write_register = 0  ; 
		
		#20;
		clk = 1;	
		$display(read_data_1);
		

	end
	
	/*
	The conclusion I got from the $display commands above is that 
	when we are assigning a block cell of the resgister, we are
	able to read the valid amount of the block cell in the next
	clock cycle. ( Age hamoon moghe bekhaym bekhoonim, data e 
	ghabli ro behemoon neshoon mide ... vasate clock e baadi 
	behemoon result e dorost ro mide.)
	
	*/
      
endmodule

