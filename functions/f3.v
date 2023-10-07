module f3(a, b, c, d, f);

input a, b, c, d;
output f;

assign f = (a & ~c)  | (~b & d) | (~a & c & d) | (a & b & c & d);

endmodule