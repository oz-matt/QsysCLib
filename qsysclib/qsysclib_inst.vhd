	component qsysclib is
		port (
			clk_clk         : in  std_logic                     := 'X'; -- clk
			resetn_reset_n  : in  std_logic                     := 'X'; -- reset_n
			to_hex_readdata : out std_logic_vector(31 downto 0)         -- readdata
		);
	end component qsysclib;

	u0 : component qsysclib
		port map (
			clk_clk         => CONNECTED_TO_clk_clk,         --    clk.clk
			resetn_reset_n  => CONNECTED_TO_resetn_reset_n,  -- resetn.reset_n
			to_hex_readdata => CONNECTED_TO_to_hex_readdata  -- to_hex.readdata
		);

