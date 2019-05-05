`timescale 1ns/1ns

module OC15TB ();
  reg [14:0] in;
  wire [3:0] out;
  OC15 uut (in,out);
  integer j;
  initial begin
    for (j = 0; j < (32*1024); j = j + 1) begin
      in <= j;
      #200;
    end
  end
endmodule