module multiple_output_circuit_tb;
	reg A, B, C, D;
	wire F_alpha, F_beta, F_gamma;

	// instantiate the unit under test
	multiple_output_circuit uut(.F_alpha(F_alpha), .F_beta(F_beta), .F_gamma(F_gamma), .A(A), .B(B), .C(C), .D(D));
		initial
			begin
				A = 0;	B = 0;	C = 0;	D = 0;	#100
				A = 0;	B = 0;	C = 0;	D = 1;	#100
				A = 0;	B = 0;	C = 1;	D = 0;	#100
				A = 0;	B = 0;	C = 1;	D = 1;	#100
				A = 0;	B = 1;	C = 0;	D = 0;	#100
				A = 0;	B = 1;	C = 0;	D = 1;	#100
				A = 0;	B = 1;	C = 1;	D = 0;	#100
				A = 0;	B = 1;	C = 1;	D = 1;	#100
				A = 1;	B = 0;	C = 0;	D = 0;	#100
				A = 1;	B = 0;	C = 0;	D = 1;	#100
				A = 1;	B = 0;	C = 1;	D = 0;	#100
				A = 1;	B = 0;	C = 1;	D = 1;	#100
				A = 1;	B = 1;	C = 0;	D = 0;	#100
				A = 1;	B = 1;	C = 0;	D = 1;	#100
				A = 1;	B = 1;	C = 1;	D = 0;	#100
				A = 1;	B = 1;	C = 1;	D = 1;	#100
			end
endmodule
