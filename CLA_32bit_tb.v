`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:10:52 10/26/2022
// Design Name:   CLA_32bit_lcu
// Module Name:   /home/nithish/Downloads/ALU Design/ALU/CLA_32bit_tb.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_32bit_lcu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_32bit_tb;

	// Inputs
	reg [31:0] input1;
	reg [31:0] input2;

	// Outputs
	wire [31:0] sum;
	wire c_out;
	wire p;
	wire g;

	// Instantiate the Unit Under Test (UUT)
	CLA_32bit_lcu uut (
		.input1(input1), 
		.input2(input2), 
		.sum(sum), 
		.c_out(c_out), 
		.p(p), 
		.g(g)
	);

	initial begin
		$monitor("input1 = %d, input2 = %d, sum = %d, c_out = %d", input1, input2, sum, c_out);
		input1 = 32'd3245; input2 = 32'd16785;
		#100;

	end
      
endmodule

