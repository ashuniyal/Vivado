`timescale 1ns / 1ps
module thirty2six(input clk,input reset,input [31:0] aa, output [15:0] bb);
reg [15:0] bbb;
always @(clk,reset) begin
if(reset) bbb<=16'b0000000000000000;
else begin
case(bbb)
aa[15:0] : bbb<=aa[31:16];
aa[31:16] : bbb<=aa[15:0];
default : bbb<=aa[15:0];
endcase;
end
end
assign bb=bbb;
endmodule
