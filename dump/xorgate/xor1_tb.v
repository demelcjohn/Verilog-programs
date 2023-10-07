`timescale 1ns/100ps
module xor1_tb;

reg a;
reg b;
wire c;

xor1 u0_DUT(
      .a_i(a),
      .b_i(b),
      .c_o(c)
);

initial begin
$dumpfile("test_xor1.vcd");
$dumpvars(0,xor1_tb);
#1 a = 1'b0;
#4 b = 1'b1;
#5 a = 1'b1;

#200 $finish;

end




endmodule
