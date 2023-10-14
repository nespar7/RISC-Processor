`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:21 10/26/2022 
// Design Name: 
// Module Name:    diff 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module diff(
    input [31:0] input1,
    input [31:0] input2,
    output reg [31:0] output1
    );
	
	wire[31:0] xorred;

	assign xorred = input1^input2;

	wire[31:0] removednum;

	assign removednum = xorred&(xorred-1);

	wire[31:0] check;

	assign check = xorred^removednum;
	
	integer i;
	
	always @(check)
	begin
		i=0;
		while(check[i]==0)
		begin
			i=i+1;
		end
		output1 = i;
	end
	
endmodule
