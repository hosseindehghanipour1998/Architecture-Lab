`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Hossein Dehghanipour
// 
// Create Date:    15:01:43 08/15/2020 
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
module MIPS(
	input clk 
    );
// =========== Next Stage Wires
	 wire EXMEM_out_BranchTarget         ;	
	 wire Fetch_in_PC_Src ;
	 
// =========== FETCH ==========================	 
	wire [15:0] instruction ;
	wire [15:0] O_instruction ;
	wire [15:0] PC_plus_two;
	wire [15:0] O_PC_plus_two;
	
	

	Fetch_Stage Fetch (
		 .clk(clk), 
		 .PC_Src(Fetch_in_PC_Src), // From Next Stages ( Memory Stage )
		 .branch_target(EXMEM_out_BranchTarget), // From Next Stages (Execute Stage)
		 .PC_plus_two(PC_plus_two), 
		 .instruction(instruction)
    );
	

	IF_ID IF_ID (
		 .clk(clk), 
		 .PC_plus_two(PC_plus_two), 
		 .instruction(instruction), 
		 .O_PC_plus_two(O_PC_plus_two), 
		 .O_instruction(O_instruction)
	 );	
// ============== DECODE =======================	  
	 wire [15:0] decode_read_data_1 ; 
	 wire [15:0] decode_read_data_2 ; 
	 wire [15:0] decode_immediate ;
	 wire cnt_RegDst , cnt_ALUSrc ,cnt_MemtoReg ,cnt_RegWrite ,cnt_MemRead , cnt_MemWrite ,cnt_Branch ;
	 wire [1:0] cnt_ALUOp ;
	 
	 Decode_Stage Decode (
		 // Inputs 
		 .clk(clk), 
		 .In_RegWrite(), // From Next Stages
		 .instruction(O_instruction), 
		 .write_register(), // From Next Stages
		 .write_Data(), // From Next Stages ( WB )
		 // Outputs
		 .read_data_1(decode_read_data_1), 
		 .read_data_2(decode_read_data_2), 
		 .immediate(decode_immediate), 
		 .RegDst(cnt_RegDst), 
		 .ALUSrc(cnt_ALUSrc), 
		 .MemtoReg(cnt_MemtoReg),  
		 .MemRead(cnt_MemRead), 
		 .MemWrite(cnt_MemWrite), 
		 .Branch(cnt_Branch), 
		 .Out_RegWrite(cnt_RegWrite),
		 .ALUOp(cnt_ALUOp)
    );

	// Smaple : wire IDEX_out_ ;
	wire [15:0] IDEX_out_PC_plus_two;
	wire [15:0] IDEX_out_Read_data_1;
	wire [15:0] IDEX_out_Read_data_2;
	wire [15:0] IDEX_out_immediate;
	wire 			IDEX_out_ALU_Src;
	wire [1:0]	IDEX_out_ALUOp;
	wire 			IDEX_out_RegDest;
	wire [2:0]	IDEX_out_rt;
	wire [2:0]	IDEX_out_rd;
	wire 			IDEX_out_MemRead;
	wire 			IDEX_out_MemWrite;
	wire 			IDEX_out_Branch;
	wire 			IDEX_out_MemtoReg;
	wire 			IDEX_out_RegWrite;
	
	ID_EX ID_EX (	 
		 // Inputs
		 .clk(clk),
		 .in_PC_plus_two(PC_plus_two), 
		 .in_Read_data_1(decode_read_data_1), 
		 .in_Read_data_2(decode_read_data_2), 
		 .in_immediate(decode_immediate), 
		 .in_ALU_Src(cnt_ALUSrc), 
		 .in_ALUOp(cnt_ALUOp), 
		 .in_RegDest(cnt_RegDst), 
		 .in_rt(O_instruction[9:7]), 
		 .in_rd(O_instruction[6:4]), 
		 .in_MemRead(cnt_MemRead), 
		 .in_MemWrite(cnt_MemWrite), 
		 .in_Branch(cnt_Branch), 
		 .in_MemtoReg(cnt_MemtoReg), 
		 .in_RegWrite(cnt_RegWrite), 
		 
		 //Outputs
		 .O_PC_plus_two(IDEX_out_PC_plus_two), 
		 .O_Read_data_1(IDEX_out_Read_data_1), 
		 .O_Read_data_2(IDEX_out_Read_data_2), 
		 .O_immediate(IDEX_out_immediate), 
		 .O_ALU_Src(IDEX_out_ALU_Src), 
		 .O_ALUOp(IDEX_out_ALUOp), 
		 .O_RegDest(IDEX_out_RegDest), 
		 .O_rt(IDEX_out_rt), 
		 .O_rd(IDEX_out_rd), 
		 .O_MemRead(IDEX_out_MemRead), 
		 .O_MemWrite(IDEX_out_MemWrite), 
		 .O_Branch(IDEX_out_Branch), 
		 .O_MemtoReg(IDEX_out_MemtoReg), 
		 .O_RegWrite(IDEX_out_RegWrite)
    );

       

// ============= Execute ===============
	wire [15:0] EX_out_ALUResult;
	wire 			EX_out_Zero;
	wire [15:0] EX_out_BranchTarget;
	wire [2:0] 	EX_out_WriteRegister;

	Execute_Stage Execute_Stage (
		 .in_Read_Data_1(IDEX_out_Read_data_1), 
		 .in_Read_Data_2(IDEX_out_Read_data_2), 
		 .in_Immediate(IDEX_out_immediate), 
		 .in_ALUSrc(IDEX_out_ALU_Src), 
		 .in_ALUOp(IDEX_out_ALUOp), 
		 .in_PC_plus_two(IDEX_out_PC_plus_two), 
		 .in_RegDest(IDEX_out_RegDest), 
		 .in_rt(IDEX_out_rt), 
		 .in_rd(IDEX_out_rd), 
		 .O_ALUResult(EX_out_ALUResult), 
		 .O_Zero(EX_out_Zero), 
		 .O_BranchTarget(EX_out_BranchTarget), 
		 .O_WriteRegister(EX_out_WriteRegister)
		 );
		 
	
	 wire EXMEM_out_MemRead      	;
	 wire EXMEM_out_MemWrite     	;
	 wire EXMEM_out_Branch       	;
	
	 wire EXMEM_out_MemtoReg     	;
	 wire EXMEM_out_RegWrite     	;
	 wire EXMEM_out_ALUResult    	;
	 wire EXMEM_out_Zero         	;
	 wire EXMEM_out_Write_Data   	;
	 wire EXMEM_out_WriteRegister	;

	 
	 EX_MEM EX_MEM (
		 .clk(clk), 
		 .in_MemRead(IDEX_out_MemRead), 
		 .in_MemWrite(IDEX_out_MemWrite), 
		 .in_Branch(IDEX_out_Branch), 
		 .in_BranchTarget(EX_out_BranchTarget), 
		 .in_MemtoReg(IDEX_out_MemtoReg), 
		 .in_RegWrite(IDEX_out_RegWrite), 
		 .in_ALUResult(EX_out_ALUResult), 
		 .in_Zero(EX_out_Zero), 
		 .in_ReadData_2(IDEX_out_Read_data_2), 
		 .in_WriteRegister(EX_out_WriteRegister), 
		 .O_MemRead(EXMEM_out_MemRead), 
		 .O_MemWrite(EXMEM_out_MemWrite), 
		 .O_Branch(EXMEM_out_Branch), 
		 .O_BranchTarget(EXMEM_out_BranchTarget), 
		 .O_MemtoReg(EXMEM_out_MemtoReg), 
		 .O_RegWrite(EXMEM_out_RegWrite), 
		 .O_ALUResult(EXMEM_out_ALUResult), 
		 .O_Zero(EXMEM_out_Zero), 
		 .O_Write_Data(EXMEM_out_Write_Data), 
		 .O_WriteRegister(EXMEM_out_WriteRegister)
    );

// =================== Memory ===================
	assign Fetch_in_PC_Src = EX_out_Zero & EXMEM_out_Branch ;
	
	wire [15:0] MEM_WB_in_ReadData ;
	wire [15:0] MEM_WB_out_ALUResult ;
	wire [15:0] MEM_WB_out_ReadData ;
	wire 			MEM_WB_out_MemtoReg ;
	
	
	Data_Mem Data_Mem (
		 .clk(clk), 
		 .memRead(EXMEM_out_MemRead), 
		 .memWrite(EXMEM_out_MemWrite), 
		 .address(EXMEM_out_ALUResult), 
		 .write_data(EXMEM_out_Write_Data), 
		 // output
		 .read_data(MEM_WB_in_ReadData)
		 );


	MEM_WB MEM_WB (
		 .clk(clk), 
		 .in_MemtoReg(EXMEM_out_MemtoReg), 
		 .in_ReadData(MEM_WB_in_ReadData), 
		 .in_ALUResult(EXMEM_out_ALUResult), 
		 .O_MemtoReg(MEM_WB_out_MemtoReg), 
		 .O_ReadData(MEM_WB_out_ReadData), 
		 .O_ALUResult(MEM_WB_out_ALUResult)
		 );




endmodule
