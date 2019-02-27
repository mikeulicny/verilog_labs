module d_ff_tb;
reg clk, din, n_rst;
wire q;
d_ff df1 (q, clk, n_rst, din);
initial
clk = 1'b0;
always
#10 clk = ~clk;
initial
begin
	din = 1'b0; n_rst = 1'b1; #20
				n_rst = 1'b0; #10
	din = 1'b1;				  #25
				n_rst = 1'b1; #10
	din = 1'b0;				  #15
	din = 1'b1;				  #20
	din = 1'b0;				  #25
end
endmodule
