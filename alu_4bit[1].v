module alu_4bit(input [3:0] A,input [3:0] B,input [2:0] opcode,output reg [3:0] result,output reg carry_flag,output zero_flag);
reg [4:0] temp;
always @(*) begin carry_flag=0;
case(opcode)
3'b000: begin temp=A+B; result=temp[3:0]; carry_flag=temp[4]; end
3'b001: begin temp=A-B; result=temp[3:0]; carry_flag=temp[4]; end
3'b010: result=A&B;
3'b011: result=A|B;
3'b100: result=A^B;
3'b101: result=~A;
3'b110: result=A<<1;
3'b111: result=A>>1;
default: result=0;
endcase end
assign zero_flag=(result==0);
endmodule
