module d_ff(q, clk, n_rst, din);
	output q;
	input clk, din, n_rst;
	reg q;
	always @ (posedge clk or negedge n_rst)
	begin
		if (!n_rst)
			q <=1'b0;
		else
			q <= din;
	end
endmodule
