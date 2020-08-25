`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:02:22 08/15/2020 
// Design Name: 
// Module Name:    SignExtend 
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
module SignExtend(
	input [6:0] in,
	output [15:0] out
    );
	 

	
	assign out[6:0] = in;
	assign out[15:7] = {9{in[6]}};


endmodule
