
module localreg32 (
	resetn,
	writedata,
	readdata,
	write,
	read,
	byteenable,
	chipselect,
	clock,
	Q_export);	

	input		resetn;
	input	[31:0]	writedata;
	output	[31:0]	readdata;
	input		write;
	input		read;
	input	[3:0]	byteenable;
	input		chipselect;
	input		clock;
	output	[31:0]	Q_export;
endmodule
