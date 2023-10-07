module bool3_tb;

wire F;
reg A,B,C,D;

bool3 exp(.A(A),.B(B),.C(C),.D(D),.F(F));

initial
begin
$display("Boolean expression 3");
$dumpfile("bool3.vcd");
$dumpvars(0,bool3_tb);
$monitor("A = %b | B = %b | C = %b | D = %b | F = %b",A,B,C,D,F);

A = 1'b0; B = 1'b0;C = 1'b0;D = 1'b0;
#2

D = 1'b1;
#2
D = 1'b0;C = 1'b1;
#2
D = 1'b1;
#2
D = 1'b0; C = 1'b0; B = 1'b1;
#2

D = 1'b1;
#2
D = 1'b0; C = 1'b1;
#2
D = 1'b1;
#2
A = 1'b1; B = 1'b0;C = 1'b0;D = 1'b0;
#2

D = 1'b1;
#2
D = 1'b0;C = 1'b1;
#2
D = 1'b1;
#2
D = 1'b0; C = 1'b0; B = 1'b1;
#2

D = 1'b1;
#2
D = 1'b0; C = 1'b1;
#2
D = 1'b1;

#2 $finish;
end

endmodule
