module graytobin_tb;

reg G0,G1,G2,G3;
wire B0,B1,B2,B3;

graytobin c(.G3(G3),.G2(G2),.G1(G1),.G0(G0),.B3(B3),.B2(B2),.B1(B1),.B0(B0));

initial
begin

$display("Gray to Binary");

$dumpfile("graytobin.vcd");
$dumpvars(0,graytobin_tb);
$monitor("G3 = %b | G2 = %b | G1 = %b | G0 = %b | B3 = %b | B2 = %b | B1 = %b | B0 = %b",G3,G2,G1,G0,B3,B2,B1,B0);

G3 = 1'b0; G2 = 1'b0;G1 = 1'b0;G0 = 1'b0;
#2

G0 = 1'b1;
#2
G0 = 1'b0;G1 = 1'b1;
#2
G0 = 1'b1;
#2
G0 = 1'b0; G1 = 1'b0; G2 = 1'b1;
#2

G0 = 1'b1;
#2
G0 = 1'b0; G1 = 1'b1;
#2
G0 = 1'b1;
#2
G3 = 1'b1; G2 = 1'b0;G1 = 1'b0;G0 = 1'b0;
#2

G0 = 1'b1;
#2
G0 = 1'b0;G1 = 1'b1;
#2
G0 = 1'b1;
#2
G0 = 1'b0; G1 = 1'b0; G2 = 1'b1;
#2

G0 = 1'b1;
#2
G0 = 1'b0; G1 = 1'b1;
#2
G0 = 1'b1;
#2 $finish;
end

endmodule
