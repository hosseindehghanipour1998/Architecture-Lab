`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:10:20 08/09/2020 
// Design Name: 
// Module Name:    Instruction_Mem 
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
module Instruction_Mem(
		input [15:0] address,
		output [15:0] instruction
    );

	reg [7:0] memory [255:0];
	
	integer i;
	
	initial begin 
		for(i=0;i<256 ; i=i+2)
			memory[i]=0;
		
		for(i=1;i<256;i=i+2)
			memory[i]=i>>1;
	end
	
	assign instruction[15:8]= memory[address];
	assign instruction[7:0]= memory[address+1];

endmodule
