module D_latch_tb;
reg ck;
reg d;
wire q;
D_latch uut (.d(d), .q(q), .ck(ck));
initial begin
	d = 0;
	ck = 0;
end
always #30 ck = ~ck;
always #50 d = ~d;
initial #1000
$stop;
endmodule
