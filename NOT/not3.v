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
