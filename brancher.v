`timescale 1ns / 1ps

module brancher (
    input [31:0] pc_in,
    input [31:0] Address,
    input [31:0] rs_val,
    input [2:0] zeros,
    input [1:0] branch,
    input [5:0] func_code,
    input rst,
    input clk,
    output reg [31:0] pc_out
);

reg [2:0] old_reg;

always @(posedge clk) begin
    if(rst) old_reg <= 3'b0;
    else old_reg <= zeros;
end

always @(*) begin
    if(rst) pc_out <= 32'b0;
    else begin
        case (branch)
            2'b01:
                begin
                    case (func_code)
                        6'b000000:
                            begin
                                pc_out <= rs_val;
                            end
                        6'b000001:
                            begin
                                if(zeros[1]) pc_out = Address;
                                else pc_out = pc_in + 32'd1;
                            end
                        6'b000010:
                            begin
                                if(zeros[0]) pc_out = Address;
                                else pc_out = pc_in + 32'd1;
                            end
                        6'b000011:
                            begin
                                if(zeros[0]) pc_out = pc_in + 32'd1;
                                else pc_out = Address;
                            end
                    endcase
                end
            2'b10:
                begin
                    case (func_code)
                        6'b000000:
                            begin
                                pc_out = Address;
                            end
                        6'b000001:
                            begin
                                if(zeros[2]) pc_out = Address;
                                else pc_out = pc_in + 32'd1;
                            end
                        6'b000010:
                            begin
                                if(zeros[2]) pc_out = pc_in + 32'd1;
                                else pc_out = Address;
                            end
                    endcase
                end 
            2'b11:
                begin
                    pc_out = Address;
                end
            default: 
                begin
                    pc_out = pc_in + 32'd1;
                end
        endcase
    end
end
endmodule