module dmem (input clk, we,
output [1:0]dataOut,input [1:0]dataIn,input addr);
//Clock, RE, WE, DATAIN, DATAOUT, ADDR, 
reg RAM[1:0];

assign dataOut = RAM[addr];

always @ (posedge clk)begin
if (we)
RAM[addr] <= dataIn;
end
endmodule
