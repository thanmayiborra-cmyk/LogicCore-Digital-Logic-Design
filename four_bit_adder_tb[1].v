`timescale 1ns/1ps
module four_bit_adder_tb;
reg [3:0] A,B; reg Cin; wire [3:0] Sum; wire Cout;
four_bit_adder uut(.A(A),.B(B),.Cin(Cin),.Sum(Sum),.Cout(Cout));
initial begin
A=0;B=0;Cin=0;#10;
A=4'b0011;B=4'b0101;Cin=0;#10;
A=4'b1111;B=4'b1111;Cin=1;#10;
$finish; end
endmodule
