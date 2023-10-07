module full_adder_tb;
reg a,b,c;
wire sum,carry;

full_adder add1(a,b,c,sum,carry);

initial
begin
    $monitor("a = %b, b = %b, c = %b, sum = %b, carry = %b", a, b, c, sum, carry);
    $dumpfile("full_adder.vcd");
    $dumpvars(0, full_adder_tb);

    a=0;b=0;c=0;
    #1;
    a=0;b=0;c=1;
    #1;
    a=0;b=1;c=0;
    #1;
    a=0;b=1;c=1;
    #1;
    a=1;b=0;c=0;
    #1;
    a=1;b=0;c=1;
    #1;
    a=1;b=1;c=0;
    #1;
    a=1;b=1;c=1;
    #1;

end

endmodule