module notgate_behavioural(a, y);

input a;
output reg y;

always@(a, y)
begin
    if (a == 0)
        y = 1;
    else
        y = 0;
end

endmodule