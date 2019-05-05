`timescale 1ns/1ns

module OC3AL (input a,b,c, output y0,y1);
  assign #(20,21) y0 = (a ^ (b ^ c));
  assign #(15,14) y1 = (a & (b | c)) | (b & c);

endmodule