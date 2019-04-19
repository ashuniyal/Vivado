`timescale 1ns / 1ps
module booth(input [3:0]a,input [3:0]b,output [7:0]c);
reg temp;
reg [7:0]out;
reg [1:0]ch=0;
reg [3:0]m=a;
reg [3:0]nm=a;
reg [3:0]aa=4'b0000;
reg [3:0]qq=0;
reg q=0;
initial begin
m=a;
nm=-m;
qq=b;
end
initial begin
for(int i=0;i<4;i++)
begin
ch={qq[0],q};

if(ch==2'b10)
aa=aa+nm;
else if(ch==2'b01)
aa=aa+m;

q=qq[0];
qq=qq>>>1;
qq[3]=aa[0];
temp=aa[3];
aa=aa>>>1;
aa[3]=temp;
end
out={aa,qq};
end
assign c=out;
endmodule
