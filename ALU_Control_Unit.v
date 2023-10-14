`timescale 1ns / 1ps

module Alu_Control_Unit (
    input [2:0] alu_op,
    input [5:0] func_code,
    output reg select,
    output reg [2:0] control
);

always @(*) begin
    case (alu_op)
        3'b000:
            begin
                control <= 3'b000;
                select <= 1'b0;
            end
        3'b001:
            begin
                select <= 1'b0;
                case (func_code)
                    6'b000000: control <= 3'b000;
                    6'b000001: control <= 3'b001;
                    default: control <= 3'b000;
                endcase
            end
        3'b010:
            begin
                select <= 1'b0;
                case (func_code)
                    6'b000000: control <= 3'b010;
                    6'b000001: control <= 3'b011; 
                    default: control <= 3'b000;
                endcase
            end
        3'b011:
            begin
                case (func_code)
                    6'b000000: 
                        begin
                            select <= 1'b1;
                            control <= 3'b101;
                        end
                    6'b000001: 
                        begin
                            select <= 1'b0;
                            control <= 3'b101;
                        end 
                    6'b000010: 
                        begin
                            select <= 1'b1;
                            control <= 3'b110;
                        end
                    6'b000011: 
                        begin
                            select <= 1'b0;
                            control <= 3'b110;
                        end
                    6'b000100: 
                        begin
                            select <= 1'b1;
                            control <= 3'b111;
                        end
                    6'b000101: 
                        begin
                            select <= 1'b0;
                            control <= 3'b111;
                        end
                    default: 
                        begin
                            select <= 1'b0;
                            control <= 3'b000;
                        end
                endcase
            end
        3'b100:
            begin                
                select <= 1'b0;
                control <= 3'b100; 
            end
        3'b101:
            begin
                select <= 1'b0;
                control <= 3'b000;
            end
        3'b110:
            begin
                select <= 1'b0;
                control <= 3'b001;
            end
        default:
            begin
                select <= 1'b0;
                control <= 3'b000;
            end
    endcase
end

endmodule