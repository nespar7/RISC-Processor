`timescale 1ns / 1ps

module Alu (
    input [31:0] read_data_1,
    input [31:0] read_data_2,
    input [4:0] shamt,
    input [2:0] control,
    input select,
    output reg [31:0] alu_res,
    output reg [2:0] zeros 
);
    
wire [31:0] sum, complement, and_res, xor_res, diff, sll, srl, sra;

wire carry,p,g;
wire [31:0] shift;

assign shift      = select ? shamt : read_data_2;

//ADD
CLA_32bit_lcu cla_1(.input1(read_data_1), .input2(read_data_2), .sum(sum),.c_out(carry), .p(p), .g(g));
//COMP
comp complement_1(.input1(read_data_2), .output1(complement));
//AND
andunit and_1(.input1(read_data_1), .input2(read_data_2), .output1(and_res));
//XOR
xorunit xor_1(.input1(read_data_1), .input2(read_data_2), .output1(xor_res));
//DIFF
diff diff_1(.input1(read_data_1), .input2(read_data_2), .output1(diff));
//SHLL
shll shiftleft(.input1(read_data_1), .shift(shift) , .shifted(sll));
//SHRL
shrl shiftight(.input1(read_data_1), .shift(shift) , .shifted(srl));
//SHRA
shra shiftrightarith(.input1(read_data_1), .shift(shift) , .shifted(sra));


always @(*) begin
    zeros[0] = read_data_1 == 32'b0 ? 1'b1 : 1'b0;
    zeros[1] = read_data_1[31] == 1'b1 ? 1'b1 : 1'b0;

    case(control)
        3'b000:
            begin
                alu_res = sum;
                zeros[2] = carry;
            end
        3'b001:
            begin
                alu_res = complement;
                zeros[2] = 1'b0;
            end
        3'b010:
            begin
                alu_res = and_res;
                zeros[2] = 1'b0;
            end
        3'b011:
            begin
                alu_res = xor_res;
                zeros[2] = 1'b0;
            end
        3'b100:
            begin
                alu_res = diff;
                zeros[2] = 1'b0;
            end
        3'b101:
            begin
                alu_res = sll;
                zeros[2] = 1'b0;
            end
        3'b110:
            begin
                alu_res = srl;
                zeros[2] = 1'b0;
            end
        3'b111:
            begin
                alu_res = sra;
                zeros[2] = 1'b0;
            end
    endcase
end

endmodule