`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:43 10/09/2019 
// Design Name: 
// Module Name:    Instruction_Memory 
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
module Instruction_Memory(ADDRESS, clk, INSTRUCTION_SET);
	
	input [31:0] ADDRESS;
	input clk;
	output reg [127:0] INSTRUCTION_SET ;
	
	reg [31:0] memory [63:0];
	reg [2:0] counter = 0; 
	reg [31:0] address = 0;
	
	integer i;
	
	// initial memory value 
	initial begin
		memory[0] = 32'b00000000001000100011100000100000; // ADD $v1 $at $v0
		//memory[1] = 32'b00000000100001010011100000100000; // ADD t4 t5 t6
		//memory[1] = 32'b00000000111000010011100000100010; // SUB $a3 $a3 $t0
		//memory[1] = 32'b10101100100001000000000000000100; // SW $a0 0x001C $a0
		//memory[1] = 32'b00010001001010010000000000001111; // BEQ $t1 $t1 0x000F
		//memory[1] = 32'b10001100100001000000000000011100; // LW $a0 0x001C $a0
		
		for (i=2 ; i<64 ; i=i+1) begin
			memory[i] = 32'bX;
		end
	end
	
	
	// watch ADDRESS value 
	always @(ADDRESS)begin
		counter = 0;
	end
	
	// output memory value (6 clk delay)
	always @(posedge clk) 
	begin
		if(counter == 5)
		begin
			address = (ADDRESS >> 2); 
			INSTRUCTION_SET = {memory[address], memory[address+1], memory[address+2], memory[address+3]}; 
			counter = 0;
		end
		
		counter = counter + 1;
	end

endmodule

