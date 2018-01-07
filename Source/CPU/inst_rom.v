`ifdef inst_rom.v
`else
 `define inst_rom.v
// --------------------------------------------------------------------------------
 `include "defines.h"

module inst_rom(
		input wire 		   ce,
		input wire [`InstAddrBus]  addr,

		output reg [`InstBus] 	   inst,

		// to pdt
		output wire [`InstAddrBus] pdt_pc,
		output reg [`InstBus] 	   pdt_inst

	      );

   assign pdt_pc = addr;
   
   reg[`InstBus]  inst_mem[0:`InstMemNum];
   
   initial $readmemh ("/home/limuyang1999/Desktop/Computer Architecture Task 2/Source/CPU/instr.data",inst_mem);

   always @ (*)
     begin
	if (ce == `ChipDisable) inst <= `ZeroWord;
	else
	  begin
	     inst <= {inst_mem[addr>>2][7:0],inst_mem[addr>>2][15:8],
		      inst_mem[addr>>2][23:16],inst_mem[addr>>2][31:24]};
	     pdt_inst <= {inst_mem[addr>>2][7:0],inst_mem[addr>>2][15:8],
			  inst_mem[addr>>2][23:16],inst_mem[addr>>2][31:24]};
	  end
     end

endmodule // inst_rom

// --------------------------------------------------------------------------------
`endif
