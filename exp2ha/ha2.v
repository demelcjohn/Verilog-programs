//Half Adder using Structural Level
//ha2.v

module ha2(A,B,S,C);
input A,B;
output S,C;
xor sum(S,A,B);
and carry(C,A,B);
endmodule
