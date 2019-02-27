module mux4_1_tb;
reg [3:0] input0_t, input1_t, input2_t, input3_t;
reg[1:0] sel_t;
wire [3:0] data_out_t;
mux4_1 Mux(input0_t, input1_t, input2_t, input3_t, sel_t, data_out_t);
initial
	begin
	// assign values to input
	input0_t <= 0;
	input1_t <= 1;
	input2_t <= 2;
	input3_t <= 3;
	
	// case 0	
	sel_t <= 0;
	#10 $display("data_out_t = %b", data_out_t);
	
	// case 1	
	sel_t <= 1;
	#10 $display("data_out_t = %b", data_out_t);

	// case 2
	sel_t <= 2;
	#10 $display("data_out_t = %b", data_out_t);

	// case 3
	sel_t <= 3;
	#10 $display("data_out_t = %b", data_out_t);

	// change input0
	input0_t <= 8;
	sel_t <= 0;
	#10 $display("data_out_t = %b", data_out_t);
	
	// change input0
	input0_t <= 4;
	sel_t <=0;
	#10 $display("data_out_t = %b", data_out_t);
	#10	$finish;
	end
endmodule
