`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:23 10/26/2022 
// Design Name: 
// Module Name:    CLA_32bit_lcu 
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
module CLA_32bit_lcu(
    input [31:0] input1,
    input [31:0] input2,
    output [31:0] sum,
    output c_out,
    output p,
    output g
    );

wire c1,p1,g1;

CLA_16_bit_lcu cla1(.in1(input1[15:0]), .in2(input2[15:0]), .c_in(1'b0), .sum(sum[15:0]), .c_out(sum_c_out), .p(p1), .g(g1));
CLA_16_bit_lcu cla2(.in1(input1[31:16]), .in2(input2[31:16]), .c_in(sum_c_out), .sum(sum[31:16]), .c_out(sumcarry), .p(p2), .g(g2));

endmodule
