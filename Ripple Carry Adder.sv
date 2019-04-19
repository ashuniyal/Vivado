`timescale 1ns / 1ps
module ripcarry(input [3:0] aa ,input [3:0] bb ,output [4:0] out);
wire [4:0] carry;
wire [3:0] sum;
assign carry[0]=1'b0;
fulla f1(aa[0],bb[0],carry[0],sum[0],carry[1]);
fulla f2(aa[1],bb[1],carry[1],sum[1],carry[2]);
fulla f3(aa[2],bb[2],carry[2],sum[2],carry[3]);
fulla f4(aa[3],bb[3],carry[3],sum[3],carry[4]);
assign out={carry[4],sum};
endmodule
