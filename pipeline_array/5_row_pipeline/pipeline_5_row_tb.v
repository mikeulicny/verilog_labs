module pipeline_5_rows_tb;
	reg X;
	reg [1:5] P;
	reg [1:7] B;
	reg [1:7] C;
	reg [1:10] A;

	wire [1:5] F;
	wire [1:11] S;
	
	// instantiate unit under test (UUT)
	gpca uut (.X(X), .P(P), .B(B), .C(C), .A(A), .F(F), .S(S));
	initial begin
		X = 0;
		P = 0;
		B = 0;
		C = 0;
		A = 0; #200;

		// multiplication 7*5
		X = 0;	
		P = 5'b00101;	// P=5 right justified
		A = 0;
		B = 7'b1110000;	// B=7 left justified
		C = 7'b1110000;	// C=B
		#200;

		// square 5^2
		X = 0;
		P = 5'b00101;	// P=5 right justified
		A = 0;
		B = 7'b0011111;	// B = first two bits 0, rest 1
		C = 7'b0100000;	// P = first bit 0, second bit 1, rest 0
		#200;

		// square root of 25
		X = 1;
		P = 5'b00000;
		A = 10'b0000011001;	// A = 25 right justified
		B = 9'b001111111;	// B = first two bits 0, rest 1
		C = 9'b010000000;	// P = first bit 0, second bit 1, rest 0
		#200;

		// division 35/5
		X = 1;
		P = 5'b00000;
		A = 10b'1100_0100_00;	// A = 35 left justified
		B = 7'b1010_000;		// B = 5 left justified
		C = 7'b1010_000;		// C=B
		#200;
	end
endmodule
