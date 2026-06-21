module traffic_light_fsm(input clk,input reset,output reg [1:0] light);
parameter RED=2'b00,GREEN=2'b01,YELLOW=2'b10;
reg [1:0] state,next_state; reg [3:0] counter;
always @(posedge clk or posedge reset) begin
if(reset) begin state<=RED; counter<=0; end
else if(counter==4'd9) begin state<=next_state; counter<=0; end
else counter<=counter+1;
end
always @(*) begin
case(state) RED:next_state=GREEN; GREEN:next_state=YELLOW; YELLOW:next_state=RED; default:next_state=RED; endcase
end
always @(*) light=state;
endmodule
