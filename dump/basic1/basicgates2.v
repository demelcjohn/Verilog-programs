//Gate Level

//basicgates2.v

module and2(x,y,out);
input x,y;
output out;
and and_gate(out,x,y);
endmodule

module or2(x,y,out);
input x,y;
output out;
or or_gate(out,x,y);
endmodule

module not2(x,out);
input x;
output out;
not not_gate(out,x);
endmodule
