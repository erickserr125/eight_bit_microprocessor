module regfile (input clk, data, 
input [1:0]WE,RE,
input addr,
output [1:0] read_out);
reg rf[1:0];
// 2X2 bit register file
always @ (posedge clk)
if (WE) rf[addr] <= data;
assign read_out = (RE == 1) ? rf[addr] : 0;
endmodule 