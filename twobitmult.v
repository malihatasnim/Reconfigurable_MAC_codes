module twobitmult(
	input [1:0] A,
	input [1:0] B,
	output reg [3:0] C
	);
	
	reg S1; 
	reg S2;
	reg S3;
	reg S4;
	
always @(*) begin
	C[0] <= A[0] & B[0];	
	S1 <= A[1] & B[0];
	S2 <= A[0] & B[1];
	S3 <= A[1] & B[1];
	halfadder halfadd1(
	.A(A), 
	.b(S2), 
	.sum(C[1]), 
	.c(S4));
	halfadder halfadd2(.a(S3), .b(S4), .sum(C[2]), .c(C[3]));
	
end

endmodule

module halfadder // Half Adder
(
	input a,
	input b,
	output sum,
	output c 
);

always @(*) begin
	sum <= a^b;
	c <= a&b;
end

endmodule
