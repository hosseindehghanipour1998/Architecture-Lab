`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:52:03 03/24/2020 
// Design Name: 
// Module Name:    SRR_8_bit 
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
// Shift Right Register -> 8 bits , Serial
module SRR_8_bit(clk ,d_in , out);
	input clk ;
	input d_in ;
	output wire [7:0] out;
	DFF dff0 (.d_in(d_in) , .clk(clk) , .q_out(out[7]) );
	DFF dff1 (.d_in(out[7]) , .clk(clk) , .q_out(out[6]) );
	DFF dff2 (.d_in(out[6]) , .clk(clk) , .q_out(out[5]) );
	DFF dff3 (.d_in(out[5]) , .clk(clk) , .q_out(out[4]) );
	DFF dff4 (.d_in(out[4]) , .clk(clk) , .q_out(out[3]) );
	DFF dff5 (.d_in(out[3]) , .clk(clk) , .q_out(out[2]) );
	DFF dff6 (.d_in(out[2]) , .clk(clk) , .q_out(out[1]) );
	DFF dff7 (.d_in(out[1]) , .clk(clk) , .q_out(out[0]) );


endmodule
