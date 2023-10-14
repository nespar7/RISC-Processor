`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:13 10/25/2022 
// Design Name: 
// Module Name:    shll 
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
module shll(
    input [31:0] input1,
    output [31:0] shifted,
    input [31:0] shift
    );

assign shifted = input1 << shift;

endmodule
