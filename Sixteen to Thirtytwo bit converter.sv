`timescale 1ns / 1ps
module six2thirty(input [15:0] a,output [31:0] b);
assign b[31:16]={16{a[15]}};
assign b[15:0]=a;
endmodule
