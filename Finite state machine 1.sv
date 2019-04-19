`timescale 1ns / 1ps
module bigfinism(input a,input clk,input reset, output reg x,output reg y);
reg [2:0] state,nextstate;

parameter s0=3'b000;
parameter s1=3'b010;
parameter s2=3'b011;
parameter s3=3'b100;
parameter s4=3'b101;

always @(posedge clk,posedge reset) begin
if(reset) state<=s0;
else state<=nextstate;
end

always @(state,a) begin
case (state)
s0 : if(a) nextstate<=s3;
     else nextstate<=s1;
s1 : if(a) nextstate<=s3;
     else nextstate<=s2;
s2 : if(a) nextstate<=s3;
     else nextstate<=s2;
s3 : if(a) nextstate<=s4;
     else nextstate<=s1;
s4 : if(a) nextstate<=s4;
     else nextstate<=s1;
default : nextstate<=s0;
endcase
end

always @(state,a) begin
case (state)
s0 : begin
x <= 0; y <= 0;
end
s1 : if (a) begin
x <= 0; y <= 0;
end else begin
x <= 1; y <= 0;
end
s2 : if (a) begin
x <= 0; y <= 0;
end else begin
x <= 1; y <= 1;
end
s3 : if (a) begin
x <= 1; y <= 0;
end else begin
x <= 0; y <= 0;
end
s4 : if (a) begin
x <= 1; y <= 1;
end else begin
x <= 0; y <= 0;
end
endcase
end

endmodule
