`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2019 21:45:26
// Design Name: 
// Module Name: Array_Multiplier
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//`include "carry_lookahead_adder_4_bit.v"

module Array_Multiplier(
    input [3:0] a,
    input [3:0] b,
    output [7:0] out
    );
    
   wire [3:0] p1;
   wire [3:0] p2;
   wire [3:0] p3;
   wire [3:0] p4;
   wire [4:0] temp1;
   wire [4:0] temp2;
   wire [4:0] temp3;
      
   assign p1 = {a[3]&b[0], a[2]&b[0], a[1]&b[0], a[0]&b[0]};
   assign p2 = {a[3]&b[1], a[2]&b[1], a[1]&b[1], a[0]&b[1]};
   assign p3 = {a[3]&b[2], a[2]&b[2], a[1]&b[2], a[0]&b[2]};
   assign p4 = {a[3]&b[3], a[2]&b[3], a[1]&b[3], a[0]&b[3]};
   
   
   assign out[0] = p1[0];
   //assign p1 = p1>>1;
   
   carry_lookahead_adder_4_bit c1({0,p1[2:0]}, p2, temp1);
   assign out[1] = temp1[0];
   
  carry_lookahead_adder_4_bit c2(temp1[4:1], p3, temp2);
  assign out[2] = temp2[0];
  
  carry_lookahead_adder_4_bit c3(temp2[4:1], p4, temp3);
  assign out[7:3] = temp3[4:0];

endmodule
