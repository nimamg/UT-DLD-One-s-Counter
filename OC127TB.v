`timescale 1ns/1ns

module OC127TB ();
  reg [126:0] a;
  wire [6:0] b;
  integer i;
  OC127 uut (a,b);
  initial begin
    a = 127'b0;
      for(i=0;i<127;i=i+1) begin
        #1000
        a[i] = ~a[i];
      end
      for(i=0;i<127;i=i+1) begin
        #1000
        a[i] = ~a[i];
      end
    end
endmodule
    