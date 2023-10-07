module f1(a, b, c, f);
input a, b, c;
output f;

assign f = (~a & b) | (b & ~c) | (~b & ~c);

endmodule