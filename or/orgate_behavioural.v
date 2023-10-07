module orgate_behavioural(a, b, y);

input a, b;
output reg y;

always@(*)
begin
    if (a == 0 & b == 0)
        y = 1'b0;
    else
        y = 1'b1;
end
endmodule