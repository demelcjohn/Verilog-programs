module full_adder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire s1, c1, c2;

half_adder ha1(.a(a), .b(b), .sum(s1), .carry(c1));
half_adder ha2(.a(s1), .b(c), .sum(sum), .carry(c2));
or or1(carry, c1, c2);

endmodule