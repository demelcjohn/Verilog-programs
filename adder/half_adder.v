module half_adder(a,b,sum,carry);
input a,b;
output sum, carry;

// gate level

xor xor_1(sum,a,b);
and and_1(carry,a,b);

endmodule