`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:22:12 10/09/2019 
// Design Name: 
// Module Name:    Register_File 
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
module Register_File(RS, RT, RD, clk, REGISTER_WRITE_Cnt, REGISTER_1, REGISTER_2, WRITE_DATA);
	
	input 		clk, REGISTER_WRITE_Cnt;
	input 		[4:0] RS, RT, RD;
	input 		[31:0] WRITE_DATA;
	output reg	[31:0] REGISTER_1, REGISTER_2;

	reg 		[31:0] register_file [63:0];

	integer 	i;
	initial 
	begin
		for(i=0 ; i<64 ; i=i+1)
		begin
			register_file[i] = i;
		end
	end

	always @(negedge clk)begin
		#5 if(REGISTER_WRITE_Cnt) begin
			register_file[RD] = WRITE_DATA;
		end
	end
	
	always @(posedge clk)begin
		REGISTER_1 = register_file[RS];
		REGISTER_2 = register_file[RT];
	end
	
	//assign REGISTER_1 = register_file[RS];
	//assign REGISTER_2 = register_file[RT];
	
endmodule
