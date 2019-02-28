// function
// P_ab = P_a + (1 - P_a) * P_b = P_a + P_a' * P_b = P_a OR ((NOT P_a) AND P_b)
//
// probabilities
// P_a = 0.9
// P_b = 0.9
//P_ab = 0.9 + (1 - 0.9) * 0.8 = 0.98

module reliability_circuit(Pa, Pb, Pab);
	input [0:7] Pa, Pb;
	output [0:7] Pab;
	wire [0:7] Ra;
	wire [0:7] Rb;

	// NOT gates
	not n0(Ra[0],Pa[0]);
	not n1(Ra[1],Pa[1]);
	not n2(Ra[2],Pa[2]);
	not n3(Ra[3],Pa[3]);
	not n4(Ra[4],Pa[4]);
	not n5(Ra[5],Pa[5]);
	not n6(Ra[6],Pa[6]);
	not n7(Ra[7],Pa[7]);

	// AND Gates
	and a0(Rb[0],Pb[0],Ra[0]);
	and a1(Rb[1],Pb[1],Ra[1]);
	and a2(Rb[2],Pb[2],Ra[2]);
	and a3(Rb[3],Pb[3],Ra[3]);
	and a4(Rb[4],Pb[4],Ra[4]);
	and a5(Rb[5],Pb[5],Ra[5]);
	and a6(Rb[6],Pb[6],Ra[6]);
	and a7(Rb[7],Pb[7],Ra[7]);

	// OR Gates
	or o0(Pab[0],Rb[0],Pa[0]);
	or o1(Pab[1],Rb[1],Pa[1]);
	or o2(Pab[2],Rb[2],Pa[2]);
	or o3(Pab[3],Rb[3],Pa[3]);
	or o4(Pab[4],Rb[4],Pa[4]);
	or o5(Pab[5],Rb[5],Pa[5]);
	or o6(Pab[6],Rb[6],Pa[6]);
	or o7(Pab[7],Rb[7],Pa[7]);

endmodule
