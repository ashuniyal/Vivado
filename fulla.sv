`timescale 1ns / 1ps

module fulla(input a,input b,input c,output sum,output carry);
wire q,w,e;
xor(q,a,b);
xor(sum,q,c);
and(w,q,c);
and(e,a,b);
or(carry,e,w);
endmodule
