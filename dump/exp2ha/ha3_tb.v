//ha3.v

module ha3_tb;
wire S,C;
reg A,B;
ha3 c1(.A(A),.B(B),.S(S),.C(C));
integer i;
initial begin
$dumpfile("ha3.vcd");
$dumpvars(0,ha3_tb);
$display("Half Adder using Behavioural Level");
$monitor("A = %b | B = %b | S = %b | C = %b",A,B,S,C);
for(i=0; i<4; i=i+1) begin
{A,B} = i;
#5;
end
end
endmodule
