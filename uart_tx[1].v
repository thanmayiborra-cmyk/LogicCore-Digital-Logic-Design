module uart_tx #(parameter CLK_FREQ=1000, BAUD_RATE=100)(input clk,input reset,input start_tx,input [7:0] data_in,output reg tx_line,output reg busy);
localparam CLKS_PER_BIT=CLK_FREQ/BAUD_RATE;
reg [15:0] baud_counter; reg [3:0] bit_index; reg [9:0] tx_shift;
always @(posedge clk or posedge reset) begin
if(reset) begin tx_line<=1; busy<=0; baud_counter<=0; bit_index<=0; tx_shift<=10'b1111111111; end
else if(!busy) begin tx_line<=1; if(start_tx) begin busy<=1; tx_shift<={1'b1,data_in,1'b0}; bit_index<=0; baud_counter<=0; end end
else if(baud_counter==CLKS_PER_BIT-1) begin baud_counter<=0; tx_line<=tx_shift[0]; tx_shift<={1'b1,tx_shift[9:1]}; if(bit_index==9) busy<=0; else bit_index<=bit_index+1; end
else baud_counter<=baud_counter+1;
end
endmodule
