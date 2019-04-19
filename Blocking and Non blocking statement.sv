`timescale 1ns / 1ps
module blo(input a,output o1,output o2,output o3,output o4,output o5,output o6);
reg b,c,d,e,f,g;
always @(a)
begin
b=a;
end
always @(a)
begin
c<=a;
end
always @(a)
begin
#5 d=a;
end
always @(a)
begin
#5 e<=a;
end
always @(a)
begin
f=#5a;
end
always @(a)
begin
g<=#5a;
end
assign o1=b;
assign o2=c;
assign o3=d;
assign o4=e;
assign o5=f;
assign o6=g;

endmodule
