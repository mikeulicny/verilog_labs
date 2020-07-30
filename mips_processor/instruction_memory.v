// instruction memory for mips processor
/* The instruction memory holds the MIPS assembly code to execute upon running. Different simple assembly programs
	can be written (in binary) to be run on the processor */
module instruction_memory (input [15:0] pc, output wire [15:0] instruction);  
	wire [3 : 0] rom_addr = pc[4 : 1];  
	  
	reg [15:0] rom[15:0];  
	initial  
		begin  
			rom[0] = 16'b1000000110000000;  	//		lw   $3, 0($0) 
			rom[1] = 16'b0010110010110010;  	// Loop:	slti $1, $3, 50  
			rom[2] = 16'b1101110001100111; 		//		beq $1, $0, Skip  
			rom[3] = 16'b1101110111011001;  	//		add $4, $4, $3   
			rom[4] = 16'b1111110110110001; 		// 		addi $3, $3, 1   
			rom[5] = 16'b1100000001111011; 		//		beq $0, $0, Loop  
			rom[6] = 16'b0000000000000000;  	//---------- skip ----------
			rom[7] = 16'b0000000000000000; 
			rom[8] = 16'b0000000000000000;  
			rom[9] = 16'b0000000000000000;  
			rom[10] = 16'b0000000000000000;  
			rom[11] = 16'b0000000000000000;  
			rom[12] = 16'b0000000000000000;  
			rom[13] = 16'b0000000000000000;  
			rom[14] = 16'b0000000000000000;  
			rom[15] = 16'b0000000000000000;  
		end  
	assign instruction = (pc[15:0] < 32 )? rom[rom_addr[3:0]]: 16'd0;  
endmodule  
