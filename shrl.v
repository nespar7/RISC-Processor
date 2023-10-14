`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:34 10/26/2022 
// Design Name: 
// Module Name:    shrl 
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
module shrl(
    input [31:0] input1,
    input [31:0] shift,
    output [31:0] shifted
    );

assign shifted = input1 >> shift;

endmodule
