`include "ha1.v"

module fa1(a,b,cin,s,cout);

input a,b,cin;
output cout,s;

wire sum1,carry1,carry2;

ha1 halfA1(a,b,sum1,carry1);
ha1 halfA2(sum1,cin,s,carry2);
or or1(cout,carry1,carry2);

endmodule