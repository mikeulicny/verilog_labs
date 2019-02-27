module mealy_zero_detector_tb;
	wire y_out_t;
	reg x_in_t, clock_t, reset_t;
	mealy_zero_detector M0 (y_out_t, x_in_t, clock_t, reset_t);
	initial 
	begin 
		clock_t = 0; 
		forever #5 t_clock = ~t_clock;
	end
	initial fork
		reset_t = 0;
		#2 reset_t = 1;
		#80 reset_t = 0;
		#89 reset_t = 1;
		#10 x_in_t = 1;
		#30 x_in_t = 0;
		#40 x_in_t = 0;
		#50 x_in_t = 0;
		#52 x_in_t = 0;
		#54 x_in_t = 0;
		#70 x_in_t = 0;
		#80 x_in_t = 0;
		#70 x_in_t = 0;
		#90 x_in_t = 0;
		#100 x_in_t = 0;
		#120 x_in_t = 0;
		#160 x_in_t = 0;
		#170 x_in_t = 0;
	join
endmodule
