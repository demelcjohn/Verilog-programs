module gray_to_binary(b0,b1,b2,b3,g0,g1,g2,g3);
output b0,b1,b2,b3;
input g0,g1,g2,g3;

assign b3 = g3;
xor(b2, g3, g2);
xor(b1, g3, g2, g1);
xor(b0, g3, g2, g1, g0);

endmodule