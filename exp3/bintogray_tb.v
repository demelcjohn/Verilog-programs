module bintogray_tb;

wire G0,G1,G2,G3;
reg B0,B1,B2,B3;

bintogray c(.B3(B3),.B2(B2),.B1(B1),.B0(B0),.G3(G3),.G2(G2),.G1(G1),.G0(G0));

initial
begin

$display("Binary to Gray");

$dumpfile("bintogray.vcd");
$dumpvars(0,bintogray_tb);
$monitor("B3 = %b | B2 = %b | B1 = %b | B0 = %b | G3 = %b | G2 = %b | G1 = %b | G0 = %b",B3,B2,B1,B0,G3,G2,G1,G0);

B3 = 1'b0; B2 = 1'b0;B1 = 1'b0;B0 = 1'b0;
#2

B0 = 1'b1;
#2
B0 = 1'b0;B1 = 1'b1;
#2
B0 = 1'b1;
#2
B0 = 1'b0; B1 = 1'b0; B2 = 1'b1;
#2

B0 = 1'b1;
#2
B0 = 1'b0; B1 = 1'b1;
#2
B0 = 1'b1;
#2
B3 = 1'b1; B2 = 1'b0;B1 = 1'b0;B0 = 1'b0;
#2

B0 = 1'b1;
#2
B0 = 1'b0;B1 = 1'b1;
#2
B0 = 1'b1;
#2
B0 = 1'b0; B1 = 1'b0; B2 = 1'b1;
#2

B0 = 1'b1;
#2
B0 = 1'b0; B1 = 1'b1;
#2
B0 = 1'b1;

#2 $finish;
end

endmodule
