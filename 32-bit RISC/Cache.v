`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:52 10/23/2019 
// Design Name: 
// Module Name:    Cache 
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
module Cache(clk, ADDRESS, INSTRUCTION_SET, INSTRUCTION, HIT);
	input 	clk;
	input 	[31:0] ADDRESS;
	input  	[127:0] INSTRUCTION_SET;
	output 	HIT;
	reg 		HIT = 0;
	output  	[31:0] INSTRUCTION;
	reg 		[31:0] INSTRUCTION;
	
	reg 		[151:0] cache [31:0];
	reg		[2:0] counter = 0;
	reg 		[3:0] set;
	reg		[3:0]	offset;
	
	integer i;
	
	initial begin
		for (i=0 ; i<32 ; i=i+1) begin 
			cache[i][151] = 0;
		end 
	end 
	
	always @(posedge clk) begin
		if (counter == 0) begin	// check if data is valid or not 
			set = ADDRESS[8:4];
			offset = ADDRESS[3:2];
			
			if (cache[ADDRESS[8:4]][151]) begin // if data is valid 
			
				if (cache[ADDRESS[8:4]][150:128] == ADDRESS[31:9]) begin
					if (offset == 3) INSTRUCTION = cache[set][31:0];
					if (offset == 2) INSTRUCTION = cache[set][63:32];
					if (offset == 1) INSTRUCTION = cache[set][95:64];
					if (offset == 0) INSTRUCTION = cache[set][127:96];
					HIT = 1;
				end
				else begin
					counter = counter + 1;
				end
			end
			
			else begin // data is invalid 
				HIT = 0;
				counter = counter + 1;
			end
		end
		else begin // load data after 6 clk
			counter = counter + 1;
			if (counter == 6) begin // load data into cache 
				#1 cache[ADDRESS[8:4]][151] = 1; // valid bit
				#1 cache[ADDRESS[8:4]][127:0] = INSTRUCTION_SET; // load instruction set
				#1 cache[ADDRESS[8:4]][150:128] = ADDRESS[31:9]; // tag bits
				counter = 0;
			end
		end
	end

endmodule
