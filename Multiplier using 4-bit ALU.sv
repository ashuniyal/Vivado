`timescale 1ns / 1ps

module mul4(input [3:0]a,input [3:0]b, output [7:0]c);
reg [3:0] aa,bb,t1;
initial begin
aa=a;
bb=b;
t1=4'b0000;
for(int i=0;i<4;i++) begin
aa=a+t1;
if(bb[0]==1) begin
t1=aa;
end
bb=bb>>1;
bb[3]=t1[0];
t1=t1>>1;
t1[3]=0;
end
end
assign c={t1,bb};
endmodule
