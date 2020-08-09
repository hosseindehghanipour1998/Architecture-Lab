`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:18:07 08/09/2020
// Design Name:   Data_Mem
// Module Name:   G:/GitRepositories/8th Semester/Architecture Lab 2020/MIPS/Codes/Data_Mem_Test_2.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Data_Mem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Data_Mem_Test_2;

	// Inputs
	reg clk;
	reg memRead;
	reg memWrite;
	reg [15:0] address;
	reg [15:0] write_data;

	// Outputs
	wire [15:0] read_data;

	// Instantiate the Unit Under Test (UUT)
	Data_Mem uut (
		.clk(clk), 
		.memRead(memRead), 
		.memWrite(memWrite), 
		.address(address), 
		.write_data(write_data), 
		.read_data(read_data)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		memRead = 0;
		memWrite = 0;
		address = 0;
		write_data = 0;

		// Wait 100 ns for global reset to finish
		#100;
	   if( read_data == 5) $display("Reading Done Succeessfully");
		  memRead = 0;
		  address = 20;
		  memWrite = 1;
		  write_data = 15;
        
		  #100
		  memRead = 1;
		  memWrite = 0;
		  #100
		  if( read_data == 15 ) $display("Writing Done Successfully");

	end
	always #2 clk=~clk;
      
endmodule

