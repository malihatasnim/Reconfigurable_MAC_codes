`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2022 11:57:51 PM
// Design Name: 
// Module Name: twobitmultBeh
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module twobitmultBeh(
    input [1:0] A,
    input [1:0] B,
    output [3:0] Sum
    );
    wire w1,w2;
    
    and n1(Sum[0],A[0],B[0]);
    and n2(w1,A[0],B[1]);
    and n3(w2,A[1],B[0]);
    
    HA n4(w1,w2,Sum[1],C);
    and n5(w3, A[1],B[0]);
    HA n6(w3,C,Sum[2],Sum[3]);
    
    
endmodule
