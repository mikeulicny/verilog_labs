module pipeline_7_row_tb;
	// inputs
	reg X;
	reg [1:7] P;
	reg [1:9] B;
	reg [1:9] C;
	reg [1:14] A;

	// outputs
	wire [1:7] F;
	wire [1:15] S;
	
	// Instantiate the Unit Under Test (UUT)
	gpca uut (.X(X), .P(P), .B(B), .C(C), .A(A), . F(F), .S(S));
	initial begin
		// Initialize Inputs
		X = 0;
		P = 0;
		B = 0;
		C = 0;
		A = 0;	#200;

		// Multiplication 7*5
		X = 0;
		P = 7'b0000101;		// P=5 right justified
		A = 0;
		B = 9'b111000000;	// B=7 left justified
		C = 9'b111000000;	// C=B
		#200;

	  	// Squaring 5^2
		X = 0;
		P = 7'b0000101;		// P=5 right justified
		A = 0;
		B = 9'b001111111;	// B first two bits 0, rest 1
		C = 9'b010000000;	// C first bit 0, second bit 1, rest 0
		#200;																		
		
		// Square Root of 25
		X = 1;
		P = 7'b0000000;
		A = 14'b00000000011001;		// A=25 right justified
		B = 9'b001111111;			// B first two bits 0, rest 1
		C = 9'b010000000;			// C first bit 0, second bit1, rest 0
		#200;

		// divide 35/5
		X = 1;
		P = 7'b0000000;
		A = 14'b11000100000000;		// A = 35 left justified
		B = 9'b101000000;			// B = 5
		C = 9'b101000000;			// C = B
		#200;
	end
endmodule
