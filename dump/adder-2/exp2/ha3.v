module ha2(x,y,s,c);
input x,y;
output reg s,c;

always@(*)
begin
    if(x==y)
    s = 1'b0;
    else 
    s = 1'b1;

    if(x==1 && y==1)
    c = 1'b1;
    else 
    c=1'b0;
end

endmodule