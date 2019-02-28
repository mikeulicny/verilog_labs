module simple_using_bdd(A, B, C, F);
	input A, B, C;
	output F;
	wire w1;

	parameter g0 = 1'b0;
	parameter g1 = 1'b1;

	bdd bdd1(C, g0, g1, w1);
	bdd bdd2(B, w1, g0, w2);
	bdd bdd3(A, w2, g1, F);
endmodule
