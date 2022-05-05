module aludec (input [1:0] funct,
input [1:0] aluop,
output reg [2:0] alucontrol);
always @ (*)

case (aluop)
2'b00: alucontrol <= 3'b000; // Pass data
2'b01: alucontrol <= 3'b001; // Add Immediate
2'b10: alucontrol <= 3'b010; // Sub Immediate
default: case(funct) // RTYPE
6'b00: alucontrol <= 3'b011; // If reg=0, PC+= data
6'b01: alucontrol <= 3'b100; // If reg = 0, PC -= data
6'b10: alucontrol <= 3'b101; // PC+=data
6'b11: alucontrol <= 3'b110; // PC-=data
default: alucontrol <= 3'bxxx; // ???
endcase
endcase

endmodule
