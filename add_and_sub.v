`timescale 1ns / 1ps

module add_and_sub(A,B,s,out,carry);

	input[7:0] A;
	input[7:0] B;
	input s;
	output[7:0] out;
	output carry;
    
	reg[7:0] out;
	reg carry;
    
	wire[7:0] A;
	wire[7:0] B;
	wire s;
    
	//reg neg_b;
	wire [7:0] neg_b = ~B[7:0] + 1;
    
	always @ (A or B or s)
	begin
    	if (s == 0)
        	begin
            	out = A + B;
            	carry = (A[7] & B[7] & ~out[7])|
                    	(~A[7] & ~B[7] & out[7]);
        	end
    	else
    	begin
        	out = A + neg_b;
        	carry = (A[7] & neg_b[7] & ~out[7])|
            	(~A[7] & ~neg_b[7] & out[7]);
       	 
    	end
	end
  	 
endmodule
