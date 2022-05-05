module top (input clk);
wire [7:0] instr; // Instruction
wire [7:0]pc; //Current PC
wire[1:0] dmem_data_out,dmem_in; // Data from dmem, to dmem
// instantiate processor and memories
eight_bit_processor proc(clk, pc, instr, dmem_in,dmem_data_out);//INSIDE
imem imem (pc, nstr);//FINISHED
dmem dmem (clk, we, dmem_data_out,dmem_in, instr[5]);//FINISHED

endmodule
