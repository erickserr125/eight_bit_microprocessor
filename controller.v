module controller (input [2:0] op, input [1:0] funct,
output [1:0] WE, RE,
output ALU_ToMemReg,ALUMem_ToReg,
output [2:0] alucontrol);

wire [1:0] aluop;

maindec md(op, WE, RE, aluop, ALU_ToMemReg, ALUMem_ToReg);//FINISHED

aludec ad (funct, aluop, alucontrol);//FINISHED

endmodule
