`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:47 11/27/2019 
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
module ALU(INPUT_1, INPUT_2, CONTROL, ZERO, ALU_RESULT);
	input 	[31:0] INPUT_1, INPUT_2;
	input 	[2:0] CONTROL;
	output 	reg ZERO = 0;
	output	reg [31:0] ALU_RESULT;
	
	always @(*) begin
		case (CONTROL) 
			3'b010: ALU_RESULT = INPUT_1 + INPUT_2; 						//	add
			3'b110: ALU_RESULT = INPUT_1 - INPUT_2; 						//	subtract
			3'b000: ALU_RESULT = INPUT_1 & INPUT_2; 						//	and
			3'b001: ALU_RESULT = INPUT_1 | INPUT_2; 						//	or
			3'b111: ALU_RESULT = INPUT_1 < INPUT_2 ? 1'b1 : 1'b0; 	//	set on less than
		endcase 
		if (ALU_RESULT == 0) begin
			ZERO = 1;
		end 
		else begin 
			ZERO = 0;
		end
		
	end
	
	
	
endmodule
