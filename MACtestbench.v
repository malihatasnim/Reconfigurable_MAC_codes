`timescale 1ns / 1ps

module MACtestbench;
    //Inputs 
    reg [1:0] A;
    reg [1:0] B;
    reg clk;
    reg e;
    //Outputs
    wire[3:0] Sum;
    
    MACDesign2 uut(.a(A),.b(B),.clk(clk),.E(e), .adder_out(Sum));
    initial begin
    clk = 0;
    A <= 2'b00;
    B <= 2'b00;
    e <= 1'b1;
    //Sum = 4'b0000;
    end
    always #5 clk<=~clk;
    initial begin
        #100;
        A <= 2'b00;
        B <= 2'b01;
        e <= 1'b0;
        #100;
        A <= 2'b01;
        B <= 2'b01;
        #100;
        A <= 2'b01;
        B <= 2'b10;
        
    end

endmodule
