`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:57:46 08/09/2020 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	input [15:0] input_A ,
	input [15:0] input_B ,
	input [2:0] ALU_Control ,
	output [15:0]  Result ,
	output Zero 
);
assign Zero = (Result == 0) ? 1'b1 : 1'b0 ;

assign Result = ( ALU_Control == 3'b000 ) ? (input_A + input_B ) : 
					 ( ALU_Control == 3'b001 ) ? (input_A - input_B) :
					 ( ALU_Control == 3'b010 ) ? (~input_A) :
					 ( ALU_Control == 3'b011 ) ? (input_A << input_B) :
					 ( ALU_Control == 3'b100 ) ? (input_A >> input_B) :
					 ( ALU_Control == 3'b101 ) ? (input_A & input_B) :
					 ( ALU_Control == 3'b110 ) ? (input_A | input_B) :
					 ((input_A < input_B) ? 1 : 0) ;
					 

endmodule
