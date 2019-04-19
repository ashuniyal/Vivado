`timescale 1ns / 1ps
module finism(input clk,input reset, output out);
reg [1:0] state,nextstate;

parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;

always @(posedge clk,posedge reset) begin
if(reset) state<=s0;
else state<=nextstate;
end

always @(state) begin
case (state)
s0 : nextstate<=s1;
s1 : nextstate<=s2;
s2 : nextstate<=s0;
default : nextstate<=s0;
endcase
end

assign out=(state==s2);

endmodule
