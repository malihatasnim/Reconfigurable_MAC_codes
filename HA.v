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
