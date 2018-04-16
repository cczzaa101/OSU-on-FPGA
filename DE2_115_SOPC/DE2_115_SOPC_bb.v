
module DE2_115_SOPC (
	altpll_sys,
	altpll_io,
	clk_50,
	reset_n,
	in_port_to_the_key,
	altpll_sdram,
	altpll_25,
	locked_from_the_pll,
	phasedone_from_the_pll,
	zs_addr_from_the_sdram,
	zs_ba_from_the_sdram,
	zs_cas_n_from_the_sdram,
	zs_cke_from_the_sdram,
	zs_cs_n_from_the_sdram,
	zs_dq_to_and_from_the_sdram,
	zs_dqm_from_the_sdram,
	zs_ras_n_from_the_sdram,
	zs_we_n_from_the_sdram,
	in_port_to_the_sma_in,
	out_port_from_the_sma_out,
	SRAM_DQ_to_and_from_the_sram,
	SRAM_ADDR_from_the_sram,
	SRAM_UB_n_from_the_sram,
	SRAM_LB_n_from_the_sram,
	SRAM_WE_n_from_the_sram,
	SRAM_CE_n_from_the_sram,
	SRAM_OE_n_from_the_sram,
	in_port_to_the_sw,
	usb_conduit_end_DATA,
	usb_conduit_end_ADDR,
	usb_conduit_end_RD_N,
	usb_conduit_end_WR_N,
	usb_conduit_end_CS_N,
	usb_conduit_end_RST_N,
	usb_conduit_end_INT,
	mouse_x_export,
	mouse_y_export);	

	output		altpll_sys;
	output		altpll_io;
	input		clk_50;
	input		reset_n;
	input	[3:0]	in_port_to_the_key;
	output		altpll_sdram;
	output		altpll_25;
	output		locked_from_the_pll;
	output		phasedone_from_the_pll;
	output	[12:0]	zs_addr_from_the_sdram;
	output	[1:0]	zs_ba_from_the_sdram;
	output		zs_cas_n_from_the_sdram;
	output		zs_cke_from_the_sdram;
	output		zs_cs_n_from_the_sdram;
	inout	[31:0]	zs_dq_to_and_from_the_sdram;
	output	[3:0]	zs_dqm_from_the_sdram;
	output		zs_ras_n_from_the_sdram;
	output		zs_we_n_from_the_sdram;
	input		in_port_to_the_sma_in;
	output		out_port_from_the_sma_out;
	inout	[15:0]	SRAM_DQ_to_and_from_the_sram;
	output	[19:0]	SRAM_ADDR_from_the_sram;
	output		SRAM_UB_n_from_the_sram;
	output		SRAM_LB_n_from_the_sram;
	output		SRAM_WE_n_from_the_sram;
	output		SRAM_CE_n_from_the_sram;
	output		SRAM_OE_n_from_the_sram;
	input	[17:0]	in_port_to_the_sw;
	inout	[15:0]	usb_conduit_end_DATA;
	output	[1:0]	usb_conduit_end_ADDR;
	output		usb_conduit_end_RD_N;
	output		usb_conduit_end_WR_N;
	output		usb_conduit_end_CS_N;
	output		usb_conduit_end_RST_N;
	input		usb_conduit_end_INT;
	output	[9:0]	mouse_x_export;
	output	[9:0]	mouse_y_export;
endmodule
