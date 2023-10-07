//halfadder_tb1.v

module halfadder_tb1;
wire S,C;
reg A,B;
halfadder1 c1(.A(A),.B(B),.S(S),.C(C));
integer i;
initial begin
$display("Half Adder");
$dumpfile("halfadder1.vcd");
$dumpvars(0,halfadder_tb1);
$display("Half Adder using Data Flow");
$monitor("A = %b | B = %b | S = %b | C = %b",A,B,S,C);
for(i=0; i<4; i=i+1) begin
{A,B} = i;
#5;
end
end
endmodule
