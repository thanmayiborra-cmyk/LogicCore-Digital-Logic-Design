`timescale 1ns/1ps
module uart_tx_tb;
reg clk,reset,start_tx; reg [7:0] data_in; wire tx_line,busy;
uart_tx #(.CLK_FREQ(1000),.BAUD_RATE(100)) uut(.clk(clk),.reset(reset),.start_tx(start_tx),.data_in(data_in),.tx_line(tx_line),.busy(busy));
initial clk=0; always #5 clk=~clk;
initial begin reset=1; start_tx=0; data_in=0; #20 reset=0; #10 data_in=8'h41; start_tx=1; #10 start_tx=0; #2000 $finish; end
endmodule
