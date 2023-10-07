module halfadder_tb;

wire S,C;
reg A,B;

halfadder c1(.A(A),.B(B),.S(S),.C(C));

initial
begin

$display("Half Adder");

$dumpfile("halfadder.vcd");
$dumpvars(0,halfadder_tb);
$monitor("A = %b | B = %b | S = %b | C = %b",A,B,S,C);

A = 1'b0;
B = 1'b0;
#5

B = 1'b1;
#5
A = 1'b1;
B = 1'b0;
#5
B = 1'b1;
#5 $finish;
end
endmodule
