`timescale 1ns/1ns

module OC127 (input [126:0] a, output [6:0] o);
	genvar i;
	wire [1:0] onebitout [0:31];
	wire [2:0] twobitout [0:15];
	wire [3:0] threebitout [0:7];
	wire [4:0] fourbitout [0:3];
	wire [5:0] fivebitout [0:1];
	generate 
		for (i = 0; i < 32; i = i + 1) begin : onebitadd
			nbitadd #(1) onebitadder (a[3*i],a[3*i+1],a[3*i+2],onebitout[i]);
		end
		for (i = 0 ; i < 16; i = i + 1) begin: twobitadd
			nbitadd #(2) twobitadder (onebitout[2*i],onebitout[2*i+1],a[96+i],twobitout[i]);
		end
		for (i = 0; i < 8 ; i = i + 1) begin : threebitadd
			nbitadd #(3) threebitadder (twobitout[2*i],twobitout[2*i+1],a[112+i],threebitout[i]);
		end
		for (i = 0; i < 4; i = i + 1) begin : fourbitadd
			nbitadd #(4) fourbitadder (threebitout[2*i],threebitout[2*i+1],a[120+i],fourbitout[i]);
		end 
		for (i = 0; i < 2; i = i + 1) begin : fivebitadd
			nbitadd #(5) fivebitadder (fourbitout[2*i],fourbitout[2*i+1],a[124+i],fivebitout[i]);
		end 
		nbitadd #(6) sixbitadder (fivebitout[0],fivebitout[1],a[126],o);
	endgenerate
endmodule