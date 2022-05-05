module imem (input [7:0] a, output [2:0] rd);
reg [2:0] RAM[63:0]; // limited memory
initial
begin
$readmemh ("memfile.dat",RAM);//FINISHED
end
assign rd = RAM[a]; // word aligned
endmodule
