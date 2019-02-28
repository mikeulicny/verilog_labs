module bdd(A, g, h, F);
	input A, g, h;
	output F;

	assign F = (A == 0)? g : h;	// if A = 0, F = g	if A = 1, F = h
endmodule
