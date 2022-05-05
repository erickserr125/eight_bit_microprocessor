module datapath (input clk,
input[2:0] alucontrol,
input [1:0]WE, RE,
input ALU_ToMemReg,ALUMem_ToReg,
output signed [7:0] pc,
input [7:0] instr,
output [1:0]dmem_data_in, input [1:0]dmem_data_out);

wire [1:0] rf_result, reg_out;
wire [1:0] mux_result = 2'b00;
wire [1:0] aluout;

//ALU Next (Input, Input, Input, output, output), connects to DECODER:
alu main_alu(instr[7:6], rf_result, alucontrol, pc,aluout);//FINISHED
//MemALUToRegMux2
mux2 MemALUToRegMux(dmem_data_out, reg_out, ALUMem_ToReg, mux_result);//FINISHED
//Regfile first; only 2 registers:
regfile rf(clk, mux_result,WE,RE,instr[5], rf_result);//FINISHED
//demux ALUToMemRegDemux, connected to regfile
demux2 ALUToMemRegDemux2(aluout, ALU_ToMemReg, dmem_data_in, reg_out);//FINISHED
endmodule

