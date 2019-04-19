`timescale 1ns / 1ps

module compt(input z[1:0],input x[1:0],output m);
wire q,w;
comp cc(z[0],x[0],q);
comp ccc(z[1],x[1],w);
and(m,q,w);
endmodule
