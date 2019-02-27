module mux4_1(input0, input1, input2, input3, sel, data_out);
	input [3:0] input0;
	input [3:0] input1;
	input [3:0] input2;
	input [3:0] input3;
	input [1:0] sel;
	output [3:0] data_out;
	reg [3:0] data_out;
	// constant declaration
	parameter S0 = 2'b00;
	parameter S1 = 2'b01;
	parameter S2 = 2'b10;
	parameter S3 = 2'b11;
	always @ (sel or input0 or input1 or input2 or input3)
		begin
			case(sel)
			S0: begin
				data_out <= input0;
			end
			S1: begin
				data_out <= input1;
			end
			S2: begin
				data_out <= input2;
			end
			S3: begin
				data_out <= input3;
			end
			endcase
	end
endmodule
