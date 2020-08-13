`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:57:16 08/13/2020 
// Design Name: 
// Module Name:    RegisterFile 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module RegisterFile(
	input 				clk ,
	input					RegWrite,
	
	// Write Port
	input 	[2:0]		write_register,
	input		[15:0]	write_data,
	
	// read port 1
	input		[2:0]		read_register_1,
	output 	[15:0]	read_data_1,
	
	// read port 2
	input 	[2:0]		read_register_2,
	output 	[15:0]	read_data_2	
    );

	reg [15:0] registers [7:0] ;
	initial registers[0] = 0 ;
	
	// giving initial amount
	integer i ;
	initial begin
		for( i = 0 ; i < 8 ; i = i + 1 ) begin
		
			registers[i] = i ;
		
		end
	end 
	
	
	// Writing Data on registers
	always@(posedge clk ) begin
		if ( write_register != 0 ) begin
		
			registers[write_register] = write_data ;
		
		end
		
		else begin
			$display("You can not write on Register Zero");
		end
	
	end
	
	// Reading Data From Registers
	assign read_register_1 = registers[read_data_1];
	assign read_register_2 = registers[read_data_2];



endmodule
