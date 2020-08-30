`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:10:33 08/13/2020 
// Design Name: 
// Module Name:    PC 
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
module PC(
	input clk ,
	input  [15:0] next_instruction_address,
	output [15:0] instruction_address
    );
	 
	reg [15:0] P_Counter = 0 ;
	
	always@(posedge clk ) begin
		
		P_Counter = next_instruction_address;
	
	end
	
	assign instruction_address = P_Counter ;

endmodule
