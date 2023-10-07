module andgate_behavioural(a, b, y);

input a, b;
output reg y;

always@(*)
begin
    if (a == 1 & b == 1)
        y = 1'b1;
    else
        y = 1'b0;
end
endmodule