module ha1(x,y,s,c);

input x,y;
output s,c;

xor sum(s,x,y);
and carry(c,x,y);

endmodule