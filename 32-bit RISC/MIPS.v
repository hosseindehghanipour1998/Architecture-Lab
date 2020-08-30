`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:41 10/23/2019 
// Design Name: 
// Module Name:    MIPS 
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
module MIPS(clk);
	input clk;


	wire [31:0] EX_pc_address;

	Fetch_Stage fetch (
		.clk(clk),
		.EX_PC_ADDRESS(branch_target_r2f),
		.PC_SRC_Cnt(pc_src_m2f),
		.HIT(hit),
		.INSTRUCTION(if_instruction),
		.PC(pc_f2r)
	);
					 
	wire 	[31:0] if_instruction;						 
	wire 	[31:0] pc_f2r;
	wire 	hit;
	
	IF_ID if_id (
		.clk(clk), 
		.PC(pc_f2r),
		.PC_OUT(pc_r2d),
		.INSTRUCTION_IN(if_instruction), 
		.HIT(hit),
		.INSTRUCTION_OUT(id_instruction)
	);
	
	wire [31:0] id_instruction;
	wire [31:0] pc_r2d;
	
	Decode_Stage decode (
		.clk(clk), 
		.INSTRUCTION(id_instruction), 
		.WRITE_REGISTER(write_register_w2d), 
		.WRITE_DATA(write_data_w2d), 
		.REGISTER_WRITE_Cnt(control_r2w[0]), 
		.HIT(hit), 
		.PC(pc_r2d),
		.PC_OUT(pc_d2r),
		.READ_DATA_1(read_data_1_d2r), 
		.READ_DATA_2(read_data_2_d2r),		
		.IMMEDIATE(immediate), 
		.RT(rt), 
		.RD(rd), 
		.Cnt(cnt) ,
		.HIT_OUT(hit_de)
   );
	
	wire [31:0] pc_d2r;
	
	wire hit_de;
	wire [31:0] read_data_1_d2r, read_data_2_d2r;
	wire [31:0] immediate;
	wire [4:0] rt, rd;
	wire [8:0] cnt;

	ID_EX id_ex (
		.clk(clk), 
		.CONTROL(cnt), 
		.HIT(hit_de),
		.IMMEDIATE(immediate), 
		.RD(rd), 
		.RT(rt), 
		.READ_DATA_1(read_data_1_d2r), 
		.READ_DATA_2(read_data_2_d2r),
		.PC(pc_d2r),
		.HIT_OUT(hit_r2e),
		.PC_OUT(pc_r2e),
		.CONTROL_OUT(control_r2e), 
		.IMMEDIATE_OUT(immediate_r2e), 
		.RD_OUT(rd_r2e), 
		.RT_OUT(rt_r2e), 
		.READ_DATA_1_OUT(read_data_1_r2e), 
		.READ_DATA_2_OUT(read_data_2_r2e)
	);
	
	wire	hit_r2e;	
	wire 	[8:0]	control_r2e;
	wire 	[31:0] read_data_1_r2e, read_data_2_r2e;
	wire	[31:0] pc_r2e;
	wire 	[31:0] immediate_r2e;
	wire 	[4:0] rt_r2e, rd_r2e;
	
	
	Execute_Stage execute (
    .REG_DST(control_r2e[0]), 
    .ALU_OP(control_r2e[2:1]), 
	 .ALU_SRC(control_r2e[3]),
	 .CONTROL(control_r2e[8:4]),
    .READ_DATA_1(read_data_1_r2e), 
    .READ_DATA_2(read_data_2_r2e), 
    .IMMEDIATE(immediate_r2e), 
    .RD(rd_r2e), 
    .RT(rt_r2e),
	 .PC(pc_r2e),
	 .HIT(hit_r2e),
	 .CONTROL_OUT(control_e2r),
    .BRANCH_TARGET(branch_target_e2r), 
    .ALU_RESULT(alu_result_e2r), 
    .ZERO(zero_e2r), 
    .WRITE_DATA(write_data_e2r), 
    .WRITE_REGISTER(write_register_e2r),
	 .HIT_OUT(hit_e2r)
   );
	
	wire	zero_e2r, hit_e2r;
	wire 	[4:0] control_e2r;
	wire	[31:0] branch_target_e2r;
	wire	[31:0] alu_result_e2r;
	wire	[31:0] write_data_e2r;
	wire	[4:0] write_register_e2r;
	
	EX_MEM ex_mem (
    .clk(clk), 
    .CONTROL(control_e2r), 
    .ZERO(zero_e2r), 
    .ALU_RESULT(alu_result_e2r),
	 .BRANCH_TARGET(branch_target_e2r),
    .READ_DATA_2(write_data_e2r), 
    .DST_REG(write_register_e2r), 
    .HIT(hit_e2r), 
    .CONTROL_OUT(control_r2m), 
    .ZERO_OUT(zero_r2m), 
    .ALU_RESULT_OUT(alu_result_r2m), 
    .READ_DATA_2_OUT(read_data_2_r2m), 
	 .BRANCH_TARGET_OUT(branch_target_r2f),
    .DST_REG_OUT(dst_reg_r2m),
	 .HIT_OUT(hit_r2m)
    );
	 
	 wire	zero_r2m , hit_r2m;
	 wire [4:0] control_r2m;
	 wire	[31:0] alu_result_r2m;
	 wire [31:0] read_data_2_r2m;
	 wire [4:0] dst_reg_r2m;
	 wire [31:0] branch_target_r2f;
	 
	 Memory memory (
    .clk(clk), 
    .ALU_RESULT(alu_result_r2m), 
    .READ_DATA_2(read_data_2_r2m), 
    .CONTROL(control_r2m), 
    .ZERO(zero_r2m), 
    .WRITE_REGISTER(dst_reg_r2m), 
	 .HIT(hit_r2m),
    .PC_SRC(pc_src_m2f), 
    .MEMORY_READ_DATA(memory_read_data_m2r), 
    .ALU_RESULT_WB(alu_result_m2r), 
    .WRITE_REGISTER_OUT(write_register_m2r), 
    .CONTROL_OUT(control_m2r),
	 .HIT_OUT(hit_m2r)
    );
	 
	 wire pc_src_m2f, hit_m2r;
	 wire [31:0] memory_read_data_m2r;
	 wire [31:0] alu_result_m2r;
	 wire [4:0] write_register_m2r;
	 wire [1:0] control_m2r;
	 
	 MEM_WB mem_wb (
    .clk(clk), 
    .HIT(hit_m2r), 
    .ALU_RESULT(alu_result_m2r), 
    .WRITE_REGISTER(write_register_m2r), 
    .READ_DATA(memory_read_data_m2r), 
    .CONTROL(control_m2r), 
    .ALU_RESULT_OUT(alu_result_r2w), 
    .WRITE_REGISTER_OUT(write_register_w2d), 
    .READ_DATA_OUT(memory_read_data_r2w), 
    .CONTROL_OUT(control_r2w)
    );

	 wire [31:0] memory_read_data_r2w;
	 wire [31:0] alu_result_r2w;
	 wire [4:0] write_register_w2d;
	 wire [1:0] control_r2w;
	 
	 Write_Back write_back(
    .MEM_TO_REG(control_r2w[1]), 
    .READ_DATA(memory_read_data_r2w), 
    .ALU_RESULT(alu_result_r2w), 
    .WRITE_DATA(write_data_w2d)
    );
	
	 wire [31:0] write_data_w2d;

endmodule
