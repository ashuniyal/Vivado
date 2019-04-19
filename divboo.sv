`timescale 1ns / 1ps

module divboo(input [3:0] a, input [3:0] b,output [7:0] c);
reg [3:0] q,aa;
initial begin
aa=4'b0000;
q=a;
for(int i=0;i<4;i++) begin
aa=aa<<1;
aa[0]=q[3];
q=q<<1;
q[0]=0;
if(aa<b) begin
q[0]=0;
end
else begin
aa=aa-b;
q[0]=1;
end
end
end
assign c={aa,q};
endmodule
