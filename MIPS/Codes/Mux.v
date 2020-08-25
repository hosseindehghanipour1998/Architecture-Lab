`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:59:01 08/15/2020 
// Design Name: 
// Module Name:    Mux 
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
module Mux(
	input [15:0] input0 ,
	input [15:0] input1 ,
	output [15:0] out ,
	input select
    );
	 
	 assign out = select ? input1 : input0 ;


endmodule
