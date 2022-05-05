module testbench();
reg clk;
// instantiate device to be tested
top dut (clk);
// generate clock to sequence tests
always
begin
clk <= 1;
 # 5; 
 clk <= 0;
 # 5; // clock duration
end
endmodule
