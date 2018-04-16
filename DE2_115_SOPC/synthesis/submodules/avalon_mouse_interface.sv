/************************************************************************
Avalon-MM Interface for AES Decryption IP Core

Dong Kai Wang, Fall 2017

For use with ECE 385 Experiment 9
University of Illinois ECE Department

Register Map:

 0-3 : 4x 32bit AES Key
 4-7 : 4x 32bit AES Encrypted Message
 8-11: 4x 32bit AES Decrypted Message
   12: Not Used
	13: Not Used
   14: 32bit Start Register
   15: 32bit Done Register

************************************************************************/

module avalon_mouse_interface (
	// Avalon Clock Input
	input logic CLK,
	
	// Avalon Reset Input
	input logic RESET,
	
	// Avalon-MM Slave Signals
	input  logic AVL_READ,					// Avalon-MM Read
	input  logic AVL_WRITE,					// Avalon-MM Write
	input  logic AVL_CS,						// Avalon-MM Chip Select
	input  logic [3:0] AVL_BYTE_EN,		// Avalon-MM Byte Enable
	input  logic [3:0] AVL_ADDR,			// Avalon-MM Address
	input  logic [31:0] AVL_WRITEDATA,	// Avalon-MM Write Data
	output logic [31:0] AVL_READDATA,	// Avalon-MM Read Data
	
	// Exported Conduit
	output logic [31:0] EXPORT_DATA		// Exported Conduit Signal to LEDs
);
	
	logic [31:0] reg_array [16];
	always_ff @ (posedge CLK)
	begin
		if(RESET) begin
			for(integer i = 0; i < 16; i = i + 1)
			begin
				reg_array[i] <= 32'h0;
			end
		end
		else if(AVL_WRITE && AVL_CS)
		begin
			if(AVL_BYTE_EN[0]) reg_array[AVL_ADDR][7:0] <= AVL_WRITEDATA[7:0];
			if(AVL_BYTE_EN[1]) reg_array[AVL_ADDR][15:8] <= AVL_WRITEDATA[15:8];
			if(AVL_BYTE_EN[2]) reg_array[AVL_ADDR][23:16] <= AVL_WRITEDATA[23:16];
			if(AVL_BYTE_EN[3]) reg_array[AVL_ADDR][31:24] <= AVL_WRITEDATA[31:24];
		end
	end
	
	//logic temp[32:0] =  reg_array[0];
	//assign EXPORT_DATA = (temp);
	//assign AVL_READDATA = (AVL_CS && AVL_READ) ?reg_array[AVL_ADDR]:32'b0;
	assign EXPORT_DATA = { reg_array[0][15:0], reg_array[1][15:0] };

	always_comb
	begin
		
		if(AVL_CS && AVL_READ)
		begin
			 AVL_READDATA =reg_array[ AVL_ADDR ];
		end
		else AVL_READDATA = 32'b0;
	end
endmodule
