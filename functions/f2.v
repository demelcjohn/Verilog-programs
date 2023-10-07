module f2(a, b, c, d, f);

input a, b, c, d;
output reg f;

always@(a, b, c, d)
begin
    f = 0;
    case ({a, b, c, d})
    4'b0000, 4'b0001, 4'b0010, 4'b0100, 4'b0101, 4'b0111, 4'b1011, 4'b1111: f = 1;
    endcase

end

endmodule