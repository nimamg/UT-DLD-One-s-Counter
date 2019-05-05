`timescale 1ns/1ns

module OC3SL (input a,b,c, output y0,y1);
  supply1 vdd;
  supply0 Gnd;
  wire uw1,uw2,uw3,uw4,uw5,uw6,dw1,dw2,dw3;
  
  pmos #(5,6,7) T1 (uw1,vdd,~a);
  pmos #(5,6,7) T2 (uw5,uw1,~b);
  pmos #(5,6,7) T3 (uw2,vdd,a);
  pmos #(5,6,7) T4 (uw5,uw2,b);
  pmos #(5,6,7) T5 (y0,uw5,~c);
  pmos #(5,6,7) T6 (uw3,vdd,a);
  pmos #(5,6,7) T7 (uw6,uw3,~b);
  pmos #(5,6,7) T8 (uw4,vdd,~a);
  pmos #(5,6,7) T9 (uw6,uw4,b);
  pmos #(5,6,7) T10 (y0,uw6,c);
  nmos #(3,4,5) T11 (dw1,Gnd,~a);
  nmos #(3,4,5) T12 (dw1,Gnd,b);
  nmos #(3,4,5) T13 (dw2,dw1,a);
  nmos #(3,4,5) T14 (dw2,dw1,~b);
  nmos #(3,4,5) T15 (dw2,Gnd,c);
  nmos #(3,4,5) T16 (dw3,dw2,a);
  nmos #(3,4,5) T17 (dw3,dw2,b);
  nmos #(3,4,5) T18 (y0,dw3,~a);
  nmos #(3,4,5) T29 (y0,dw3,~b);
  nmos #(3,4,5) T30 (y0,dw2,~c);
  
  wire uw7,uw8,dw4,dw5;
  
  pmos #(5,6,7) T19 (uw7,vdd,~a);
  pmos #(5,6,7) T20 (y1,uw7,~b);
  pmos #(5,6,7) T21 (y1,uw7,~c);
  pmos #(5,6,7) T22 (uw8,vdd,~b);
  pmos #(5,6,7) T23 (y1,uw8,~c);
  nmos #(3,4,5) T24 (dw4,Gnd,~c);
  nmos #(3,4,5) T25 (dw4,Gnd,~b);
  nmos #(3,4,5) T26 (dw5,dw4,~b);
  nmos #(3,4,5) T27 (y1,dw5,~c);
  nmos #(3,4,5) T28 (y1,dw4,~a);
endmodule