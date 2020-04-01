`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:03:03 04/02/2020 
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
module ALU(input_A, input_B, control_bits, output_O , zero);
input [15:0] input_A ;
input [15:0] input_B ;
input [2:0] control_bits ;
output [15:0]  output_O ;
output zero ;

assign output_O = control_bits[0] ? 
							(control_bits[1] ?  // if control_bits[0] == 1
										(input_A | input_B) : 
										(input_A - input_B)  )
						 : (control_bits[1] ? // control_bits[0] == 0 
									(input_A ^ input_B): // control_bits[1] == 1 
									(control_bits[2] ? // control_bits[1] == 0
												((input_A > input_B) ? 16'b0000000000000001 : 16'b0000000000000000) : (input_A + input_B)
									
									 ) 
							
							) ; 



endmodule
