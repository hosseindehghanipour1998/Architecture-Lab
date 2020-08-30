`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:44:36 11/27/2019 
// Design Name: 
// Module Name:    Add 
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
module Add(INPUT_1, INPUT_2, RESULT);
	input 	[31:0] INPUT_1, INPUT_2;
	output 	[31:0] RESULT;
	
	assign RESULT = INPUT_1 + INPUT_2;
	
endmodule
