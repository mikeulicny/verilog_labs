module simple_test;
	//	inputs
	reg A, B, C;

	// outputs
	wire F;

	// instantiate unit under test
	simple_using_bdd uut(.A(A), .B(B), .C(C), .F(F));
		initial
			begin
				A = 0;	B = 0;	C = 0;	#100
				A = 0;	B = 0;	C = 1;	#100
				A = 0;	B = 1;	C = 0;	#100
				A = 0;	B = 1;	C = 1;	#100
				A = 1;	B = 0;	C = 0;	#100
				A = 1;	B = 0;	C = 1;	#100
				A = 1;	B = 1;	C = 0;	#100
				A = 1;	B = 1;	C = 1;	#100
			end
endmodule
