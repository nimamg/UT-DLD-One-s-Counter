`timescale 1ns/1ns

module nbitadd #(parameter n) (input [n-1:0] a,b,input cin, output [n:0]s);
  assign #(n*20,n*21) s = a + b + cin;
endmodule
