module fulladd1bit (S, C, x, y, z);
	input x, y, z;
	output S, C;
	wire S1 ,D1, D2;
	halfadder HA1(S1 ,D1, x, y);
	halfadder HA2(S, D2, S1, z);
	or g1(C, D2, D1);
endmodule

module halfadder (S, C, x, y);
	input x, y;
	output S, C;
	xor (S, x, y);
	and (C, x, y);
endmodule
