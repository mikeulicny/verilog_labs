module threshold2_test;
	// inputs
	reg [31:0] x1;
	reg [31:0] w1;
	reg [31:0] x2;
	reg [31:0] w2;
	reg [31:0] th;

	// outputs
	wire [1:0] F;

	// instantiate the unit under test
	thresholt2 uut (.x1(x1), .w1(w1), .x2(x2), .w2(w2), .th(th), .F(F));
	initial
		begin
			x1 = 0;	w1 = 0; x2 = 0; w2 = 1;	th = 1.5;	#100
			x1 = 0;	w1 = 1;	x2 = 1;	w2 = 1;	th = 1.5;	#100;
			x1 = 1;	w1 = 1;	x2 = 0;	w2 = 1;	th = 1.5;	#100;
			x1 = 1;	w1 = 1;	x2 = 1;	w2 = 1;	th = 1.5;	#100;
		end   
endmodule
