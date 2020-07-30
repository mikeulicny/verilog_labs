// data memory module for mips processor

module data_memory (input clk,
 	// address input, shared by read and write port  
	input [15:0] mem_access_addr,

	// write port  
	input [15:0] mem_write_data,  

	// memory read/write flags
	input mem_write_en,  
	input mem_read,  

	// read port  
	output [15:0] mem_read_data
	);  
	
	integer i;  
	reg [15:0] ram [255:0];  
	wire [7 : 0] ram_addr = mem_access_addr[8 : 1];  
	initial
		begin   // initialize all 256 bytes of RAM to 0000 0000 0000 0000
			for(i=0; i<256; i=i+1) ram[i] <= 16'd0;  
		end  
		always @(posedge clk)
		begin
			// write data to RAM
			if (mem_write_en)  
				ram[ram_addr] <= mem_write_data;  
		end
		// if memory read flag (mem_read) is true, read data from RAM
		assign mem_read_data = (mem_read==1'b1) ? ram[ram_addr]: 16'd0;   
endmodule  
