module demux_tb;
reg E,S1,S0;
wire A,B,C,D;

demux c(E,S1,S0,A,B,C,D);
integer i;
initial begin
$dumpfile("demux.vcd");
$dumpvars(0,demux_tb);
$display("E  S1  S0   A   B  C  D");
$monitor("%b   %b   %b   %b   %b   %b   %b",E,S1,S0,A,B,C,D);
for(i=0; i<8; i=i+1) begin
{E,S1,S0} = i;
#1;
end
end
endmodule
