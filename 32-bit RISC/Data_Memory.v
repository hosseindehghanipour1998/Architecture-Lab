`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:08:56 12/04/2019 
// Design Name: 
// Module Name:    Data_Memory 
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
module Data_Memory(clk, ADDRESS, WRITE_DATA, MEM_WRITE, MEM_READ, READ_DATA);
	input clk;
	input MEM_WRITE, MEM_READ;
	input [31:0] ADDRESS;
	input [31:0] WRITE_DATA;
	output reg [31:0] READ_DATA;
	
	reg [31:0] data_memory [511:0];
	
	integer i;
	initial begin
		for (i=0 ; i<512 ; i=i+1) begin
			data_memory[i] = i;
		end
	end
	
	always @(posedge clk) begin
		#4 if (MEM_READ) begin
			READ_DATA = data_memory[ADDRESS]; 
		end
		else if (MEM_WRITE) begin
			data_memory[ADDRESS] = WRITE_DATA;
		end
	end
		
endmodule
