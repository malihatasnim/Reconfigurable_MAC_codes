`timescale 1ns / 1ps

module MACDesign2(
    input [1:0] a,
    input [1:0] b,
    input clk,
    output [3:0] adder_out
    );
    wire w1;
    twobitmultBeh mul2(a,b,w1);
    Accumulator accum(w1,clk,adder_out);
    
endmodule

module Accumulator(
    input [3:0] mult,
    input clk,
    output reg [3:0] accumout
    ); 
    always@(posedge clk) begin
        accumout <= accumout + mult;
    end
    
endmodule

module twobitmultBeh(
    input [1:0] A,
    input [1:0] B,
    output [3:0] Sum
    );
    wire w1,w2;
    //and (output, In, In)
    and n1(Sum[0],A[0],B[0]);
    and n2(w1,A[0],B[1]);
    and n3(w2,A[1],B[0]);
    
    HA n4(w1,w2,Sum[1],C);
    and n5(w3, A[1],B[0]);
    HA n6(w3,C,Sum[2],Sum[3]);
    
    
endmodule

module HA // Half Adder
(
	input a,
	input b,
	output sum,
	output c 
);

xor n1(sum,a,b);
and n2(c,a,b);

endmodule

