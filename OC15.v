`timescale 1ns/1ns

module OC15 (input [14:0] i, output [3:0] o);
  wire [2:0] a, b;
  wire c1,c2;
  OC7SL firstOC7 (i[6:0],a);
  OC7SL secondOC7 (i[13:7],b);
  OC3SL firstOC3 (a[0],b[0],i[14],o[0],c1);
  OC3SL secondOC3 (a[1],b[1],c1,o[1],c2);
  OC3SL thridOC3 (a[2],b[2],c2,o[2],o[3]);
endmodule
