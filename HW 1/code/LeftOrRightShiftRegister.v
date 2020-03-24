`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:38:43 03/24/2020 
// Design Name: 
// Module Name:    LeftOrRightShiftRegister 
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
module LeftOrRightShiftRegister(d_in , clk , leftOrRight,out);
	input d_in;
	input clk ;
	input wire leftOrRight ;
	// leftOrRight = 1 -> right
	// leftOrRight = 0 -> left
	output [7:0] out ;
	
	if ( leftOrRight == 1'b1 ) begin
		DFF dff0 (.d_in(d_in) , .clk(clk) , .q_out(out[7]) );
		DFF dff1 (.d_in(out[7]) , .clk(clk) , .q_out(out[6]) );
		DFF dff2 (.d_in(out[6]) , .clk(clk) , .q_out(out[5]) );
		DFF dff3 (.d_in(out[5]) , .clk(clk) , .q_out(out[4]) );
		DFF dff4 (.d_in(out[4]) , .clk(clk) , .q_out(out[3]) );
		DFF dff5 (.d_in(out[3]) , .clk(clk) , .q_out(out[2]) );
		DFF dff6 (.d_in(out[2]) , .clk(clk) , .q_out(out[1]) );
		DFF dff7 (.d_in(out[1]) , .clk(clk) , .q_out(out[0]) );

	
	end
	
	else if ( leftOrRight == 1'b0 ) begin 
		DFF dff0 (.d_in(d_in) , .clk(clk) , .q_out(out[0]) );
		DFF dff1 (.d_in(out[0]) , .clk(clk) , .q_out(out[1]) );
		DFF dff2 (.d_in(out[1]) , .clk(clk) , .q_out(out[2]) );
		DFF dff3 (.d_in(out[2]) , .clk(clk) , .q_out(out[3]) );
		DFF dff4 (.d_in(out[3]) , .clk(clk) , .q_out(out[4]) );
		DFF dff5 (.d_in(out[4]) , .clk(clk) , .q_out(out[5]) );
		DFF dff6 (.d_in(out[5]) , .clk(clk) , .q_out(out[6]) );
		DFF dff7 (.d_in(out[6]) , .clk(clk) , .q_out(out[7]) );
	end
	
	else
		begin
		$display("Wrong Flag");
		end

	


endmodule
