`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:30 10/26/2022 
// Design Name: 
// Module Name:    xorunit 
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
module xorunit(
    input [31:0] input1,
    input [31:0] input2,
    output [31:0] ouput1
    );

assign ouput1=input1^input2;

endmodule
