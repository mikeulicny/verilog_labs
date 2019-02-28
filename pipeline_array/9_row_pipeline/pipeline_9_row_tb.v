module pipeline_9_row_tb;
	// inputs
	reg X;
	reg [1:9] P;
	reg [1:19] B;
	reg [1:19] C;
	reg [1:18] A;
	
	// outputs
	wire [1:9] F;
	wire [1:19] S;

	// instantiate the Unit Under Test (UUT)
	gpca uut (.X(X), .P(P), .B(B), .C(C), .A(A), .F(F), .S(S));
	initial begin
		// Initialize Inputs
		X = 0;
		P = 0;
		B = 0;
		C = 0;
		A = 0;
		#200;
		
		// Multiplication 7*5
		X = 0;
		P=9'b0000_00101;	// P = 5 right justified
		A=0;
		B=19'b1110_0000_0000_0000_000;	// B = 7
		C=19'b1110_0000_0000_0000_000;	// C = B
		#200;

		// Squaring 5^2
		X = 0;
		P=9'b0_0000_0101;	// P = 5 right justified
		A=0; 
		B=19'b001_1111_1111_1111_1111;	// B = first two bits 0, rest 1
		C=19'b010_0000_0000_0000_0000;	// C = first bit 0, second bit 1, rest 0
		#200;
																																	
		// Square Root of 25
		X = 1;
		P=9'b0000_00000;
		A=18'b0000_0000_0000_0110_01;	// A = 25 right justified
		B=19'b0011_1111_1111_1111_111;	// B = first two bits 0, rest 1
		C=19'b0100_0000_0000_0000_000;	// C = first bit 0, second bit 1, rest 0
		#200;
		
		// Division 35/5
		X = 1;
		P=9'b0000_0000_0;
		A=18'b1100_0100_00;	// A = 35 left justified
		B=19'b1010_0000_0000_0000_000;	// B = 5
		C=19'b1010_0000_0000_0000_000;	// C = B
		#200;
	end 
endmodule
