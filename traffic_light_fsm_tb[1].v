`timescale 1ns/1ps
module traffic_light_fsm_tb;
reg clk,reset; wire [1:0] light;
traffic_light_fsm uut(.clk(clk),.reset(reset),.light(light));
initial clk=0; always #5 clk=~clk;
initial begin reset=1; #10 reset=0; #400 $finish; end
endmodule
