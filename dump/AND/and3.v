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
