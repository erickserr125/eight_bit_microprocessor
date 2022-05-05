module alu (a,b,sel, pc,out);
	input [1:0] a,b;
	input [2:0] sel; 
	output reg [1:0] out;
	output reg signed  [7:0] pc;
	reg signed [1:0] pc_next;
	initial begin
		out <= 0;
	end
	//Whenever pc_next is changed, change pc too!
	always @(pc_next) begin
		pc = pc+pc_next;
	end
	always @ (*) begin 
		case(sel) 
			3'b000:begin//Pass Data
				out <= a;
				pc_next <= 2'b01;
			end                   
			3'b001:begin//Add Immediate
				out<= b+a;
				pc_next <= 2'b01;
			end
			3'b010:begin//Subtract Immediate
				out<=b-a;
				pc_next <= 2'b01;
			end
			3'b011:begin
				if(b === 0)//Conditional Jump Down
					pc_next <= a;
				else
					pc_next <= 2'b01;
			end
			3'b100:begin//Conditional Jump Up
				if(b===0)
					pc_next <= -a;
				else 
					pc_next <= 2'b01;
			end
			3'b101:begin//Unconditional Jump Down
				pc_next <= a;
			end
			3'b110:begin//Unconditional Jump Up
				pc_next <= -a;
			end 
			3'b111:begin
			
			end
		endcase
   end
endmodule
