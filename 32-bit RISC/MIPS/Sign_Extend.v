`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:03:36 11/13/2019 
// Design Name: 
// Module Name:    Sign_Extend 
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
module Sign_Extend(INPUT, OUTPUT);
	input [15:0] INPUT;
	output [31:0] OUTPUT;
	
	
	assign OUTPUT [15:0] = INPUT;
	assign OUTPUT [31:16] = {16{INPUT[15]}};

endmodule
