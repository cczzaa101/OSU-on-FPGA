	component DE2_115_SOPC is
		port (
			altpll_sys                   : out   std_logic;                                        -- clk
			altpll_io                    : out   std_logic;                                        -- clk
			clk_50                       : in    std_logic                     := 'X';             -- clk
			reset_n                      : in    std_logic                     := 'X';             -- reset_n
			in_port_to_the_key           : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export
			altpll_sdram                 : out   std_logic;                                        -- clk
			altpll_25                    : out   std_logic;                                        -- clk
			locked_from_the_pll          : out   std_logic;                                        -- export
			phasedone_from_the_pll       : out   std_logic;                                        -- export
			zs_addr_from_the_sdram       : out   std_logic_vector(12 downto 0);                    -- addr
			zs_ba_from_the_sdram         : out   std_logic_vector(1 downto 0);                     -- ba
			zs_cas_n_from_the_sdram      : out   std_logic;                                        -- cas_n
			zs_cke_from_the_sdram        : out   std_logic;                                        -- cke
			zs_cs_n_from_the_sdram       : out   std_logic;                                        -- cs_n
			zs_dq_to_and_from_the_sdram  : inout std_logic_vector(31 downto 0) := (others => 'X'); -- dq
			zs_dqm_from_the_sdram        : out   std_logic_vector(3 downto 0);                     -- dqm
			zs_ras_n_from_the_sdram      : out   std_logic;                                        -- ras_n
			zs_we_n_from_the_sdram       : out   std_logic;                                        -- we_n
			in_port_to_the_sma_in        : in    std_logic                     := 'X';             -- export
			out_port_from_the_sma_out    : out   std_logic;                                        -- export
			SRAM_DQ_to_and_from_the_sram : inout std_logic_vector(15 downto 0) := (others => 'X'); -- DQ
			SRAM_ADDR_from_the_sram      : out   std_logic_vector(19 downto 0);                    -- ADDR
			SRAM_UB_n_from_the_sram      : out   std_logic;                                        -- UB_n
			SRAM_LB_n_from_the_sram      : out   std_logic;                                        -- LB_n
			SRAM_WE_n_from_the_sram      : out   std_logic;                                        -- WE_n
			SRAM_CE_n_from_the_sram      : out   std_logic;                                        -- CE_n
			SRAM_OE_n_from_the_sram      : out   std_logic;                                        -- OE_n
			in_port_to_the_sw            : in    std_logic_vector(17 downto 0) := (others => 'X'); -- export
			usb_conduit_end_DATA         : inout std_logic_vector(15 downto 0) := (others => 'X'); -- DATA
			usb_conduit_end_ADDR         : out   std_logic_vector(1 downto 0);                     -- ADDR
			usb_conduit_end_RD_N         : out   std_logic;                                        -- RD_N
			usb_conduit_end_WR_N         : out   std_logic;                                        -- WR_N
			usb_conduit_end_CS_N         : out   std_logic;                                        -- CS_N
			usb_conduit_end_RST_N        : out   std_logic;                                        -- RST_N
			usb_conduit_end_INT          : in    std_logic                     := 'X';             -- INT
			mouse_x_export               : out   std_logic_vector(9 downto 0);                     -- export
			mouse_y_export               : out   std_logic_vector(9 downto 0)                      -- export
		);
	end component DE2_115_SOPC;

	u0 : component DE2_115_SOPC
		port map (
			altpll_sys                   => CONNECTED_TO_altpll_sys,                   --                  c0_out_clk.clk
			altpll_io                    => CONNECTED_TO_altpll_io,                    --                  c2_out_clk.clk
			clk_50                       => CONNECTED_TO_clk_50,                       --               clk_50_clk_in.clk
			reset_n                      => CONNECTED_TO_reset_n,                      --         clk_50_clk_in_reset.reset_n
			in_port_to_the_key           => CONNECTED_TO_in_port_to_the_key,           --     key_external_connection.export
			altpll_sdram                 => CONNECTED_TO_altpll_sdram,                 --                      pll_c1.clk
			altpll_25                    => CONNECTED_TO_altpll_25,                    --                      pll_c3.clk
			locked_from_the_pll          => CONNECTED_TO_locked_from_the_pll,          --          pll_locked_conduit.export
			phasedone_from_the_pll       => CONNECTED_TO_phasedone_from_the_pll,       --       pll_phasedone_conduit.export
			zs_addr_from_the_sdram       => CONNECTED_TO_zs_addr_from_the_sdram,       --                  sdram_wire.addr
			zs_ba_from_the_sdram         => CONNECTED_TO_zs_ba_from_the_sdram,         --                            .ba
			zs_cas_n_from_the_sdram      => CONNECTED_TO_zs_cas_n_from_the_sdram,      --                            .cas_n
			zs_cke_from_the_sdram        => CONNECTED_TO_zs_cke_from_the_sdram,        --                            .cke
			zs_cs_n_from_the_sdram       => CONNECTED_TO_zs_cs_n_from_the_sdram,       --                            .cs_n
			zs_dq_to_and_from_the_sdram  => CONNECTED_TO_zs_dq_to_and_from_the_sdram,  --                            .dq
			zs_dqm_from_the_sdram        => CONNECTED_TO_zs_dqm_from_the_sdram,        --                            .dqm
			zs_ras_n_from_the_sdram      => CONNECTED_TO_zs_ras_n_from_the_sdram,      --                            .ras_n
			zs_we_n_from_the_sdram       => CONNECTED_TO_zs_we_n_from_the_sdram,       --                            .we_n
			in_port_to_the_sma_in        => CONNECTED_TO_in_port_to_the_sma_in,        --  sma_in_external_connection.export
			out_port_from_the_sma_out    => CONNECTED_TO_out_port_from_the_sma_out,    -- sma_out_external_connection.export
			SRAM_DQ_to_and_from_the_sram => CONNECTED_TO_SRAM_DQ_to_and_from_the_sram, --            sram_conduit_end.DQ
			SRAM_ADDR_from_the_sram      => CONNECTED_TO_SRAM_ADDR_from_the_sram,      --                            .ADDR
			SRAM_UB_n_from_the_sram      => CONNECTED_TO_SRAM_UB_n_from_the_sram,      --                            .UB_n
			SRAM_LB_n_from_the_sram      => CONNECTED_TO_SRAM_LB_n_from_the_sram,      --                            .LB_n
			SRAM_WE_n_from_the_sram      => CONNECTED_TO_SRAM_WE_n_from_the_sram,      --                            .WE_n
			SRAM_CE_n_from_the_sram      => CONNECTED_TO_SRAM_CE_n_from_the_sram,      --                            .CE_n
			SRAM_OE_n_from_the_sram      => CONNECTED_TO_SRAM_OE_n_from_the_sram,      --                            .OE_n
			in_port_to_the_sw            => CONNECTED_TO_in_port_to_the_sw,            --      sw_external_connection.export
			usb_conduit_end_DATA         => CONNECTED_TO_usb_conduit_end_DATA,         --             usb_conduit_end.DATA
			usb_conduit_end_ADDR         => CONNECTED_TO_usb_conduit_end_ADDR,         --                            .ADDR
			usb_conduit_end_RD_N         => CONNECTED_TO_usb_conduit_end_RD_N,         --                            .RD_N
			usb_conduit_end_WR_N         => CONNECTED_TO_usb_conduit_end_WR_N,         --                            .WR_N
			usb_conduit_end_CS_N         => CONNECTED_TO_usb_conduit_end_CS_N,         --                            .CS_N
			usb_conduit_end_RST_N        => CONNECTED_TO_usb_conduit_end_RST_N,        --                            .RST_N
			usb_conduit_end_INT          => CONNECTED_TO_usb_conduit_end_INT,          --                            .INT
			mouse_x_export               => CONNECTED_TO_mouse_x_export,               --                     mouse_x.export
			mouse_y_export               => CONNECTED_TO_mouse_y_export                --                     mouse_y.export
		);

