module fulladder_tb;

wire S,Cout;
reg A,B,Cin;

fulladder c(.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));

initial
begin

$display("Full Adder");

$dumpfile("fulladder.vcd");
$dumpvars(0,fulladder_tb);
$monitor("A = %b | B = %b | Cin = %b | S = %b | Cout = %b",A,B,Cin,S,Cout);

A = 1'b0;
B = 1'b0;
Cin = 1'b0;
#2

Cin = 1'b1;
#2
Cin = 1'b0;
B = 1'b1;
#2
Cin = 1'b1;
#2
Cin = 1'b0;
B = 1'b0;
A = 1'b1;
#2

Cin = 1'b1;
#2
Cin = 1'b0;
B = 1'b1;
#2
Cin = 1'b1;

#2 $finish;
end

endmodule
