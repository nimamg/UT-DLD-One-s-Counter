`timescale 1ns/1ns

module OC7AL (input [6:0] i, output[2:0] o);
  wire [1:0] y,w;
  wire f;
  OC3AL firstOC3 (i[0],i[1],i[2],y[0],y[1]);
  OC3AL secondOC3 (i[3],i[4],i[5],w[0],w[1]);
  OC3AL thirdOC3 (y[0],w[0],i[6],o[0],f);
  OC3AL fourthOC3 (y[1],w[1],f,o[1],o[2]);
endmodule
  
