module D_latch (q, d, ck);
	input d, ck;
	output q;
	reg q;
	always @ (ck or d)
	begin
	if (ck)
		q = d;
	end
endmodule

