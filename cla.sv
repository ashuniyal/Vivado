`timescale 1ns / 1ps
module cla(input [3:0] aa,input [3:0] bb,output [4:0] out);
wire [4:0] carry;
wire [3:0] g,p,sum;
wire t1,t2,t3,t4;

and(g[0],aa[0],bb[0]);
and(g[1],aa[1],bb[1]);
and(g[2],aa[2],bb[2]);
and(g[3],aa[3],bb[3]);

xor(p[0],aa[0],bb[0]);
xor(p[1],aa[1],bb[1]);
xor(p[2],aa[2],bb[2]);
xor(p[3],aa[3],bb[3]);

assign carry[0]=1'b0;

and(t1,p[0],carry[0]);
or(carry[1],g[0],t1);
and(t2,p[1],carry[1]);
or(carry[2],g[1],t2);
and(t3,p[2],carry[2]);
or(carry[3],g[2],t3);
and(t4,p[3],carry[3]);
or(carry[4],g[3],t4);


fulla f1(.a(aa[0]),.b(bb[0]),.c(carry[0]),.summ(sum[0]),.carryy());
fulla f2(.a(aa[1]),.b(bb[1]),.c(carry[1]),.summ(sum[1]),.carryy());
fulla f3(.a(aa[2]),.b(bb[2]),.c(carry[2]),.summ(sum[2]),.carryy());
fulla f4(.a(aa[3]),.b(bb[3]),.c(carry[3]),.summ(sum[3]),.carryy());

assign out={carry[4],sum};

endmodule
