`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:36 11/27/2019 
// Design Name: 
// Module Name:    ALU_control 
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
module ALU_control(FUNCTION, ALU_OP, ALU_CONTROL);
	input 	[5:0] FUNCTION;
	input 	[1:0] ALU_OP;
	output	reg [2:0] ALU_CONTROL;
	
	always @(*) begin
		
		case (ALU_OP) 
			2'b10:	// R type
			begin	
				case (FUNCTION)
					6'b100000: ALU_CONTROL = 3'b010; 	//	add
					6'b100010: ALU_CONTROL = 3'b110;	//	subtract
					6'b100100: ALU_CONTROL = 3'b000;	//	and
					6'b100101: ALU_CONTROL = 3'b001;	// or
					6'b101010: ALU_CONTROL = 3'b111;	// set on less than
				endcase
			end
			2'b00:	ALU_CONTROL = 3'b010;	// add
			2'b01:	ALU_CONTROL = 3'b110;	//	subtract
			
		endcase 
	end
endmodule
