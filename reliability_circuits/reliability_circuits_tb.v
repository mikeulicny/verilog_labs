module reliability_circuit_tb;
	reg [0:7] Pa, Pb;
	wire [0:7] Pab;

	// instantiate module
	reliability_circuit RC1 (Pa, Pb, Pab);

	initial
		begin
			Pa = 8'sb00000000;	Pb = 8'sb00000000;	#100;
			Pa = 8'sb01110011;	Pb = 8'sb01100110;	#100;
			Pa = 8'sb00001111;	Pb = 8'sb00001111;	#100;
		end
endmodule
