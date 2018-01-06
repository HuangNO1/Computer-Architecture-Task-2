//ȫ��
`define RstEnable 1'b1
`define RstDisable 1'b0
`define ZeroWord 32'h00000000
`define WriteEnable 1'b1
`define WriteDisable 1'b0
`define ReadEnable 1'b1
`define ReadDisable 1'b0
`define AluOpBus 7:0
`define AluSelBus 2:0
`define InstValid 1'b0
`define InstInvalid 1'b1
`define NotBranch 1'b0
`define ChipEnable 1'b1
`define ChipDisable 1'b0
`define CLOG2(x) \
	((x <= 0)		? -1 : \
	(x == 1)		? 0 : \
	(x <= 2) 		? 1 : \
	(x <= 4) 		? 2 : \
	(x <= 8) 		? 3 : \
	(x <= 16) 		? 4 : \
	(x <= 32)		? 5 : \
	(x <= 64)		? 6 : \
	(x <= 128)		? 7 : \
	(x <= 256)		? 8 : \
	(x <= 512)		? 9 : \
	(x <= 1024)		? 10 : \
	(x <= 2048)		? 11 : \
	(x <= 4096)		? 12 : \
	(x <= 8192)		? 13 : \
	(x <= 16384)	? 14 : \
	(x <= 32768)	? 15 : \
	(x <= 65536)	? 16 : \
	(x <= 131072)	? 17 : \
	(x <= 262144)	? 18 : \
	(x <= 524288)	? 19 : \
	(x <= 1048576)	? 20 : -1)

//AluOp
`define EXE_AND_OP 8'b00100100
`define EXE_OR_OP 8'b00100101
`define EXE_XOR_OP 8'b00100110
`define EXE_ORI_OP 8'b01011010
`define EXE_XORI_OP 8'b01011011
`define EXE_LUI_OP 8'b01011100   

`define EXE_SLL_OP 8'b01111100
`define EXE_SRL_OP 8'b00000010
`define EXE_SRA_OP 8'b00000011

`define EXE_SLT_OP 8'b00101010
`define EXE_SLTU_OP 8'b00101011
`define EXE_ADD_OP 8'b00100000
`define EXE_SUB_OP 8'b00100010

`define EXE_LB_OP 8'b11100000
`define EXE_LBU_OP 8'b11100100
`define EXE_LH_OP 8'b11100001
`define EXE_LHU_OP 8'b11100101
`define EXE_LW_OP 8'b11100011
`define EXE_SB_OP 8'b11101000
`define EXE_SH_OP 8'b11101001
`define EXE_SW_OP 8'b11101011

`define EXE_NOP_OP 8'b0000000

//AluSel
`define EXE_RES_LOGIC 3'b001
`define EXE_RES_SHIFT 3'b010
`define EXE_RES_ARITHMETIC 3'b100
`define EXE_RES_JUMP_BRANCH 3'b110
`define EXE_RES_LOAD_STORE 3'b111

`define EXE_RES_NOP 3'b000

//ָ��洢��inst_rom
`define InstAddrBus 31:0
`define InstBus 31:0
`define InstMemNum 100

//���ݴ洢��data_ram
`define DataAddrBus 31:0
`define DataBus 31:0
`define DataMemNum 1024
`define ByteWidth 7:0

//ͨ�üĴ���regfile
`define RegAddrBus 4:0
`define RegBus 31:0
`define RegWidth 32
`define DoubleRegWidth 64
`define DoubleRegBus 63:0
`define RegNum 32
`define RegNumLog2 5
`define NOPRegAddr 5'b00000
