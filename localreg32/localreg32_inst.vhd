	component localreg32 is
		port (
			resetn     : in  std_logic                     := 'X';             -- reset_n
			writedata  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			readdata   : out std_logic_vector(31 downto 0);                    -- readdata
			write      : in  std_logic                     := 'X';             -- write
			read       : in  std_logic                     := 'X';             -- read
			byteenable : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			chipselect : in  std_logic                     := 'X';             -- chipselect
			clock      : in  std_logic                     := 'X';             -- clk
			Q_export   : out std_logic_vector(31 downto 0)                     -- readdata
		);
	end component localreg32;

	u0 : component localreg32
		port map (
			resetn     => CONNECTED_TO_resetn,     --    clock_reset.reset_n
			writedata  => CONNECTED_TO_writedata,  -- avalon_slave_0.writedata
			readdata   => CONNECTED_TO_readdata,   --               .readdata
			write      => CONNECTED_TO_write,      --               .write
			read       => CONNECTED_TO_read,       --               .read
			byteenable => CONNECTED_TO_byteenable, --               .byteenable
			chipselect => CONNECTED_TO_chipselect, --               .chipselect
			clock      => CONNECTED_TO_clock,      --     clock_sink.clk
			Q_export   => CONNECTED_TO_Q_export    --    conduit_end.readdata
		);

