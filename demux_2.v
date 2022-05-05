module demux2 # (parameter WIDTH = 8)
(input [WIDTH-1:0] d, input s,
output reg [WIDTH-1:0] y0, y1);

always@(*) begin
if (s === 0)begin
	y0 <= d;
	y1 <= 0;
end
else begin
	y1 <= d;
	y0 <= 0;
	end
end
endmodule
