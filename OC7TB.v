`timescale 1ns/1ns

module OC7TB ();
  reg [6:0] in;
  wire [2:0] SLOut,ALOut;
  OC7SL uut1 (in,SLOut);
  OC7AL uut2 (in,ALOut);
  integer j;
  initial begin
    for (j = 0 ; j < 128 ; j = j + 1) begin
      in <= j;
      #200;
    end
  end
endmodule
