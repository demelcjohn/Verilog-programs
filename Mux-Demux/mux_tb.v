module mux_tb;
reg A,B,C,D,S1,S0;
wire Out;

mux c(A,B,C,D,S1,S0,Out);
integer i;
initial begin
$dumpfile("mux.vcd");
$dumpvars(0,mux_tb);
$display("A   B   C   D   S1  S0  Out");
$monitor("%b   %b   %b   %b   %b   %b   %b",A,B,C,D,S1,S0,Out);
for(i=0; i<64; i=i+1) begin
{A,B,C,D,S1,S0} = i;
#1;
end
end
endmodule
