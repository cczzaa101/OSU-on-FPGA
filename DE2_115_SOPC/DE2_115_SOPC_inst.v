	DE2_115_SOPC u0 (
		.altpll_sys                   (<connected-to-altpll_sys>),                   //            c0_out_clk.clk
		.altpll_io                    (<connected-to-altpll_io>),                    //            c2_out_clk.clk
		.clk_50                       (<connected-to-clk_50>),                       //         clk_50_clk_in.clk
		.reset_n                      (<connected-to-reset_n>),                      //   clk_50_clk_in_reset.reset_n
		.altpll_sdram                 (<connected-to-altpll_sdram>),                 //                pll_c1.clk
		.altpll_25                    (<connected-to-altpll_25>),                    //                pll_c3.clk
		.locked_from_the_pll          (<connected-to-locked_from_the_pll>),          //    pll_locked_conduit.export
		.phasedone_from_the_pll       (<connected-to-phasedone_from_the_pll>),       // pll_phasedone_conduit.export
		.zs_addr_from_the_sdram       (<connected-to-zs_addr_from_the_sdram>),       //            sdram_wire.addr
		.zs_ba_from_the_sdram         (<connected-to-zs_ba_from_the_sdram>),         //                      .ba
		.zs_cas_n_from_the_sdram      (<connected-to-zs_cas_n_from_the_sdram>),      //                      .cas_n
		.zs_cke_from_the_sdram        (<connected-to-zs_cke_from_the_sdram>),        //                      .cke
		.zs_cs_n_from_the_sdram       (<connected-to-zs_cs_n_from_the_sdram>),       //                      .cs_n
		.zs_dq_to_and_from_the_sdram  (<connected-to-zs_dq_to_and_from_the_sdram>),  //                      .dq
		.zs_dqm_from_the_sdram        (<connected-to-zs_dqm_from_the_sdram>),        //                      .dqm
		.zs_ras_n_from_the_sdram      (<connected-to-zs_ras_n_from_the_sdram>),      //                      .ras_n
		.zs_we_n_from_the_sdram       (<connected-to-zs_we_n_from_the_sdram>),       //                      .we_n
		.SRAM_DQ_to_and_from_the_sram (<connected-to-SRAM_DQ_to_and_from_the_sram>), //      sram_conduit_end.DQ
		.SRAM_ADDR_from_the_sram      (<connected-to-SRAM_ADDR_from_the_sram>),      //                      .ADDR
		.SRAM_UB_n_from_the_sram      (<connected-to-SRAM_UB_n_from_the_sram>),      //                      .UB_n
		.SRAM_LB_n_from_the_sram      (<connected-to-SRAM_LB_n_from_the_sram>),      //                      .LB_n
		.SRAM_WE_n_from_the_sram      (<connected-to-SRAM_WE_n_from_the_sram>),      //                      .WE_n
		.SRAM_CE_n_from_the_sram      (<connected-to-SRAM_CE_n_from_the_sram>),      //                      .CE_n
		.SRAM_OE_n_from_the_sram      (<connected-to-SRAM_OE_n_from_the_sram>),      //                      .OE_n
		.usb_conduit_end_DATA         (<connected-to-usb_conduit_end_DATA>),         //       usb_conduit_end.DATA
		.usb_conduit_end_ADDR         (<connected-to-usb_conduit_end_ADDR>),         //                      .ADDR
		.usb_conduit_end_RD_N         (<connected-to-usb_conduit_end_RD_N>),         //                      .RD_N
		.usb_conduit_end_WR_N         (<connected-to-usb_conduit_end_WR_N>),         //                      .WR_N
		.usb_conduit_end_CS_N         (<connected-to-usb_conduit_end_CS_N>),         //                      .CS_N
		.usb_conduit_end_RST_N        (<connected-to-usb_conduit_end_RST_N>),        //                      .RST_N
		.usb_conduit_end_INT          (<connected-to-usb_conduit_end_INT>),          //                      .INT
		.mouse_data_EXPORT_DATA       (<connected-to-mouse_data_EXPORT_DATA>)        //            mouse_data.EXPORT_DATA
	);

