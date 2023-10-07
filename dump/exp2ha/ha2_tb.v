//ha2.v

module ha2_tb;
wire S,C;
reg A,B;
ha2 c1(.A(A),.B(B),.S(S),.C(C));
integer i;
initial begin
$dumpfile("ha2.vcd");
$dumpvars(0,ha2_tb);
$display("Half Adder using Gate Level");
$monitor("A = %b | B = %b | S = %b | C = %b",A,B,S,C);
for(i=0; i<4; i=i+1) begin
{A,B} = i;
#5;
end
end
endmodule
