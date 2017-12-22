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
`define Stop 1'b1
`define NoStop 1'b0
`define InDelaySlot 1'b1
`define NotInDelaySlot 1'b0
`define Branch 1'b1
`define NotBranch 1'b0
`define InterruptAssert 1'b1
`define InterruptNotAssert 1'b0
`define TrapAssert 1'b1
`define TrapNotAssert 1'b0
`define True_v 1'b1
`define False_v 1'b0
`define ChipEnable 1'b1
`define ChipDisable 1'b0

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

`define EXE_JALR_OP  8'b00001001
`define EXE_JAL_OP 8'b01010000

`define EXE_NOP_OP 8'b00000000

//AluSel
`define EXE_RES_LOGIC 3'b001
`define EXE_RES_SHIFT 3'b010
`define EXE_RES_ARITHMETIC 3'b100
`define EXE_RES_JUMP_BRANCH 3'b110

`define EXE_RES_NOP 3'b000

//ָ��洢��inst_rom
`define InstAddrBus 31:0
`define InstBus 31:0
`define InstMemNum 100
`define InstMemNumLog2 17


//ͨ�üĴ���regfile
`define RegAddrBus 4:0
`define RegBus 31:0
`define RegWidth 32
`define DoubleRegWidth 64
`define DoubleRegBus 63:0
`define RegNum 32
`define RegNumLog2 5
`define NOPRegAddr 5'b00000
