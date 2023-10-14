`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:24 10/25/2022 
// Design Name: 
// Module Name:    shra 
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
module shra(
    input [31:0] input1,
    input [31:0] shift,
    output [31:0] shifted
    );

assign shifted = input1 >>> shift;

endmodule
