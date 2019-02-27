module fulladd1bit_tb;
reg x,y,z;
wire S,C;
fulladd1bit fa(S,C,x,y,z);
initial
begin
			x=0; y=0; z=0;
	#100	x=0; y=0; z=1;
	#100	x=0; y=1; z=0;
	#100	x=0; y=1; z=1;
	#100	x=1; y=0; z=0;
	#100	x=1; y=0; z=1;
	#100	x=1; y=1; z=0;
	#100	x=1; y=1; z=1;
end
endmodule
