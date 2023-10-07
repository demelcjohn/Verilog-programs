//Data Flow level

//basicgates1.v

module and1(x,y,out);
input x,y;
output out;
assign out = x&y;
endmodule

module or1(x,y,out);
input x,y;
output out;
assign out = x|y;
endmodule

module not1(x,out);
input x;
output out;
assign out = ~x;
endmodule
