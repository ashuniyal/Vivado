`timescale 1ns / 1ps
module mul8(input [3:0]a,input [3:0]b,output [7:0]c);
reg [3:0]bb=b;
reg [7:0]man={4'b0000,a[3:0]};
reg [7:0] pro1,pro2,pro3,pro4;
reg [7:0]m1,m2,m3,t1=0,t2,t3,t4;


cla cc1(8'b00000000,man,pro1);
initial begin
assign t1=8'b00000000;
if(bb[0]==1) begin
assign t1=pro1;
end
bb=bb>>>1;
m1=man;
m1=m1<<1;
end
cla cc2(t1,m1[7:0],pro2);
initial begin
assign t2=t1;
if(bb[0]==1) begin
assign t2=pro2;
end
bb=bb>>>1;
m2=m1;
m2=m2<<1;
end
cla cc3(t2,m2[7:0],pro3);
initial begin
assign t3=t2;
if(bb[0]==1) begin
assign t3=pro3;
end
bb=bb>>>1;
m3=m2;
m3=m3<<1;
end
cla cc4(t3,m3[7:0],pro4);
initial begin
assign t4=t3;
if(bb[0]==1) begin
assign t4=pro4;
end
end

assign c=t4;
endmodule