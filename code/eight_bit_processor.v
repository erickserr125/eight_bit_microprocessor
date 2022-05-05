module eight_bit_processor (input clk,
output [7:0] pc,
input [7:0] instr,
output[1:0] dmem_in,//Data to send to dmem
input [1:0]dmem_data_out);//FINISHED

wire [1:0] WE, RE;
wire ALU_ToMemReg,ALUMem_ToReg;
wire [2:0] alucontrol;

controller c(instr[2:0], instr[4:3], WE, RE,
ALU_ToMemReg, ALUMem_ToReg, alucontrol);//FINISHED

//Clock, Reset, ALUControl(wire from controller==>datapath), Input Enable
//Write Enable, Read Enable, MuxSel from ALU to MEM/Reg, 
//MuxSel from ALU/MEM to reg,Program Counter, instruction,
//Output from ALU to dmem, Addr to write inside dmem, addr to read from dmem,
//Data from dmem to write inside Register!
datapath dp(clk, alucontrol,
WE, RE, ALU_ToMemReg,ALUMem_ToReg, pc,instr, dmem_in, dmem_data_out);//FINISHED

endmodule
