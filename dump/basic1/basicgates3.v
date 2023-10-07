//Behavioural Level

//basicgates3.v

module and3(x,y,out);
input x,y;
output reg out;
always@(*)
begin
if(x==0||y==0)
out = 1'b0;
else
out = 1'b1;
end
endmodule

module or3(x,y,out);
input x,y;
output reg out;
always@(*)
begin
if(x==0&&y==0)
out = 1'b0;
else
out = 1'b1;
end
endmodule

module not3(x,out);
input x;
output reg out;
always@(*)
begin
if(x==0)
out = 1'b1;
else
out = 1'b0;
end
endmodule
