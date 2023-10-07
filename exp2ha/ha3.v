//Half Adder using Behavioural Level
//ha3.v

module ha3(A,B,S,C);
input A,B;
output reg S,C;
always@(*)
begin
if(A==B)
S = 1'b0;
else
S = 1'b1;
if(A==1 && B==1)
C = 1'b1;
else
C=1'b0;
end
endmodule
