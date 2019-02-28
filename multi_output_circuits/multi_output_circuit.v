// functions
// Fa = A'B'D' + AC'D + BCD
// Fb = A'B' + A'C'D + BCD
// Fg = AB' + AC'D + BCD

module multiple_output_circuit(F_alpha, F_beta, F_gamma, A, B, C, D);
	input A, B, C, D;
	output	F_alpha, F_beta, F_gamma;
	wire [0:8] W;

	// NOT gates
	not g1(W[0], A);
	not g2(W[1], B);
	not g3(W[2], C);
	not g4(W[3], D);

	// AND gates
	and g5(W[4], W[0], D);
	and g6(W[5], A, W[2], D);
	and g7(W[6], B, C, D);
	and g8(W[7], W[0], W[1]);
	and g9(W[8], A, W[1]);

	// OR gates (final)
	or g10(F_alpha, W[4], W[5], W[6]);
	or g11(F_beta, W[7], W[4], W[7]);
	or g12(F_gamma, W[8], W[5], W[6]);
endmodule
