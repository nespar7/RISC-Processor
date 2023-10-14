`timescale 1ns / 1ps

module Main_Control (
    input [5:0] op_code,
    output reg [2:0] aluOp,
    output reg aluSrc,
    output reg [1:0] memToReg,
    output reg [1:0] regWrt,
    output reg memRd,
    output reg memWrt,
    output reg [1:0] Br
);

always @(*) begin
    case (op_code)
        6'b000001:
            begin
                aluOp <= 3'b001;
                aluSrc <= 1'b1;
                memToReg <= 2'b00;
                regWrt <= 2'b10;
                memRd <= 1'b0;
                memWrt <= 1'b0;
                Br <= 2'b00;
            end 
        6'b000010:
            begin
                aluOp <= 3'b010;
                aluSrc <= 1'b1;
                memToReg <= 2'b00;
                regWrt <= 2'b10;
                memRd <= 1'b0;
                memWrt <= 1'b0;
                Br <= 2'b00;
            end 
        6'b000011:
            begin
                aluOp <= 3'b011;
                aluSrc <= 1'b1;
                memToReg <= 2'b00;
                regWrt <= 2'b10;
                memRd <= 1'b0;
                memWrt <= 1'b0;
                Br <= 2'b00;
            end 
        // Reg branch
        6'b000100:
            begin
                aluOp <= 3'b000;
                aluSrc <= 1'b1;
                memToReg <= 2'b00;
                regWrt <= 2'b00;
                memRd <= 1'b0;
                memWrt <= 1'b0;
                Br <= 2'b01;
            end 
        // carry and branch
        6'b000101:
            begin
                aluOp <= 3'b000;
                aluSrc <= 1'b1;
                memToReg <= 2'b00;
                regWrt <= 2'b00;
                memRd <= 1'b0;
                memWrt <= 1'b0;
                Br <= 2'b10;
            end 
        // branch and link
        6'b000110:
            begin
                aluOp <= 3'b000;
                aluSrc <= 1'b1;
                memToReg <= 2'b01;
                regWrt <= 2'b01;
                memRd <= 1'b0;
                memWrt <= 1'b0;
                Br <= 2'b11;
            end 
        // diff
        6'b000111:
            begin
                aluOp <= 3'b100;
                aluSrc <= 1'b1;
                memToReg <= 2'b00;
                regWrt <= 2'b10;
                memRd <= 1'b0;
                memWrt <= 1'b0;
                Br <= 2'b00;
            end 
        // add immediate
        6'b001000:
            begin
                aluOp <= 3'b101;
                aluSrc <= 1'b0;
                memToReg <= 2'b00;
                regWrt <= 2'b10;
                memRd <= 1'b0;
                memWrt <= 1'b0;
                Br <= 2'b00;
            end 
        // complement immediate
        6'b001001:
            begin
                aluOp <= 3'b110;
                aluSrc <= 1'b0;
                memToReg <= 2'b00;
                regWrt <= 2'b10;
                memRd <= 1'b0;
                memWrt <= 1'b0;
                Br <= 2'b00;
            end
        // load word
        6'b001010:
            begin
                aluOp <= 3'b101;
                aluSrc <= 1'b0;
                memToReg <= 2'b10;
                regWrt <= 2'b11;
                memRd <= 1'b1;
                memWrt <= 1'b0;
                Br <= 2'b00;
            end
        // store word 
        6'b001011:
            begin
                aluOp <= 3'b101;
                aluSrc <= 1'b0;
                memToReg <= 2'b00;
                regWrt <= 2'b00;
                memRd <= 1'b0;
                memWrt <= 1'b1;
                Br <= 2'b00;
            end
        default: 
            begin
                aluOp <= 3'b000;
                aluSrc <= 1'b0;
                memToReg <= 2'b00;
                regWrt <= 2'b00;
                memRd <= 1'b0;
                memWrt <= 1'b0;
                Br <= 2'b00;
            end
    endcase 
end
    
endmodule