`timescale 1ns/1ps
module alu_4bit_tb;
reg [3:0] A,B; reg [2:0] opcode; wire [3:0] result; wire zero_flag,carry_flag;
alu_4bit uut(.A(A),.B(B),.opcode(opcode),.result(result),.zero_flag(zero_flag),.carry_flag(carry_flag));
initial begin
A=4'b0011;B=4'b0001;opcode=3'b000;#10;
A=4'b0010;B=4'b0101;opcode=3'b001;#10;
A=4'b1100;B=4'b1010;opcode=3'b010;#10;
$finish; end
endmodule
