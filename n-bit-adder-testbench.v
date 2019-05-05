`timescale 1ns/1ns

module nbitaddTB ();
  reg [3:0] a,b;
  reg cin;
  wire [4:0] s;
  nbitadd #(4) uut (a,b,cin,s);
  initial begin
    repeat(15) begin
      a = $random;
      b = $random;
      cin = $random;
      #500;
    end
  end
endmodule
  