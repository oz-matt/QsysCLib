	localreg32 u0 (
		.resetn     (<connected-to-resetn>),     //    clock_reset.reset_n
		.writedata  (<connected-to-writedata>),  // avalon_slave_0.writedata
		.readdata   (<connected-to-readdata>),   //               .readdata
		.write      (<connected-to-write>),      //               .write
		.read       (<connected-to-read>),       //               .read
		.byteenable (<connected-to-byteenable>), //               .byteenable
		.chipselect (<connected-to-chipselect>), //               .chipselect
		.clock      (<connected-to-clock>),      //     clock_sink.clk
		.Q_export   (<connected-to-Q_export>)    //    conduit_end.readdata
	);

