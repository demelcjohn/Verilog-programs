module mux(s0, s1, a, b, c, d, y);
input s0, s1, a, b, c, d;
output y;

assign y = (~s1 & ~s0 & a) | (~s1 & s0 & b) | (s1 & ~s0 & c) | (s1 & s0 & d);

endmodule