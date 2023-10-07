module bool1_tb;

wire F;
reg A,B,C;

bool1 exp(.A(A),.B(B),.C(C),.F(F));

initial
begin
$display("Boolean expression 1");
$dumpfile("bool1.vcd");
$dumpvars(0,bool1_tb);
$monitor("A = %b | B = %b | C = %b | F = %b",A,B,C,F);

A = 1'b0;
B = 1'b0;
C = 1'b0;
#2

C = 1'b1;
#2
C = 1'b0;
B = 1'b1;
#2
C = 1'b1;
#2
C = 1'b0;
B = 1'b0;
A = 1'b1;
#2

C = 1'b1;
#2
C = 1'b0;
B = 1'b1;
#2
C = 1'b1;

#2 $finish;
end

endmodule
