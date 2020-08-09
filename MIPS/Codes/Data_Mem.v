`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:51:16 08/09/2020 
// Design Name: 
// Module Name:    Data_Mem 
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
module Data_Mem(
	input clk,
	input memRead,
	input memWrite,
	input [15:0] address,
	input [15:0] write_data,
	output reg [15:0] read_data
    );

	reg [7:0] memory [1023:0];
	
	integer i;
	initial begin 
		for(i = 0 ;i < 1024 ; i = i + 2 )
			memory[i] = 0 ;
		
		for(i=1;i<1024;i=i+2)
			memory[i] = i>>1 ;
	end
	
	always @(posedge clk) begin
		if( memRead == 1 ) begin
			
			read_data= {memory[address] , memory[address+1]};
			
		end
		if(memWrite==1) begin
			memory[ address ] = write_data[15:8];
			memory[ address + 1 ] = write_data[7:0];
		end
	end
	
endmodule
