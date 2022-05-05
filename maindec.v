module maindec (input [2:0] op, output IE,
output [1:0] WE, RE, ALUOp,
output ALUToMemOrReg, ALUOrMemToReg);

reg [7:0] controls;

assign {WE, RE, ALUOp, ALUToMemOrReg, ALUOrMemToReg}  = controls;

always @ (* )
 case(op)
3'b000: controls <= 8'b01100001; 		//LW (Copies from Mem to Reg)
3'b001: controls <= 8'b1001011X; 		//SW (Copies from reg to Mem)
3'b010: controls <= 8'b01010100; 		//MV (Copies from reg to reg)
3'b011: controls <= 8'b0100000X; 		//MVi (Copies from Constant to Reg)
3'b100: controls <= 8'b01010100; 		//Addi (Add Constant to Reg)
3'b101: controls <= 8'b01011000; 		//Subi (Subtract Constant from Reg)
3'b110: controls <= 8'b000111XX;		//beq (if reg ==0 move pc up to 4 instructions)
3'b111: controls <= 8'b000011XX;		//Jmp (Change PC up to 4 instructions)
default:  controls <= 8'bXXXXXXXX; 		//???
endcase
endmodule



