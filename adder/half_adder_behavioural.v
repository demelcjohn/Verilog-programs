module half_adder_behavioural(a, b, sum, carry);
input a, b;
output reg sum, carry;

always@(a, b, sum, carry)
begin
    sum = 0;
    carry = 0;
    if (a & b)
        carry = 1;
    else if ((~a & b) | (a & ~b))
        sum = 1;
end

endmodule