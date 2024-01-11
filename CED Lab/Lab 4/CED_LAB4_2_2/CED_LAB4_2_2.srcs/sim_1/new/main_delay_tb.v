`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2022 05:41:59 PM
// Design Name: 
// Module Name: main_delay_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main_delay_tb;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire f;

	// Instantiate the Unit Under Test (UUT)
	main_delay uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.f(f)
	);

	initial
	begin
		// Initialize Inputs
		a = 0;
		b = 1;
		c = 1;

		// Wait 100 ns for global reset to finish
		//#100;
        
		// Add stimulus here
		#10;
		a=1;
        #10;
        a=0;
        #20;
		$finish;
	end

endmodule
