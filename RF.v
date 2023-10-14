`timescale 1ns / 1ps

module RF (
    input clk,
    input rst,
    input [4:0] rs,
    input [4:0] rt,
    input [31:0] writeData,
    input [1:0] regWrt,
    output [31:0] read_data_1,
    output [31:0] read_data_2
);

reg [31:0] registers[31:0];

always @(posedge clk) begin
    if(rst) begin
        registers[0] <= 32'b0;
        registers[1] <= 32'b0;
        registers[2] <= 32'b0;
        registers[3] <= 32'b0;
        registers[4] <= 32'b0;
        registers[5] <= 32'b0;
        registers[6] <= 32'b0;
        registers[7] <= 32'b0;
        registers[8] <= 32'b0;
        registers[9] <= 32'b0;
        registers[10] <= 32'b0;
        registers[11] <= 32'b0;
        registers[12] <= 32'b0;
        registers[13] <= 32'b0;
        registers[14] <= 32'b0;
        registers[15] <= 32'b0;
        registers[16] <= 32'b0;
        registers[17] <= 32'b0;
        registers[18] <= 32'b0;
        registers[19] <= 32'b0;
        registers[20] <= 32'b0;
        registers[21] <= 32'b0;
        registers[22] <= 32'b0;
        registers[23] <= 32'b0;
        registers[24] <= 32'b0;
        registers[25] <= 32'b0;
        registers[26] <= 32'b0;
        registers[27] <= 32'b0;
        registers[28] <= 32'b0;
        registers[29] <= 32'b0;
        registers[30] <= 32'b0;
        registers[31] <= 32'b0;
    end
    else begin
        case(regWrt)
            2'b01:
                registers[31] <= writeData;
            2'b10:
                registers[rs] <= writeData;
            2'b11:
                registers[rt] <= writeData;
            default:
                begin
                    
                end
        endcase
    end
end

    assign read_data_1 = registers[rs];
    assign read_data_2 = registers[rt];

endmodule