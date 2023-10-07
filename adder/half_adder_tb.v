module half_adder_tb;

reg a,b;
wire sum,carry;

half_adder add1(a,b,sum,carry);

initial begin
    $monitor("a = %b, b = %b, sum = %b, carry = %b",a, b, sum, carry);
    $dumpfile("half_adder.vcd");
    $dumpvars(0, half_adder_tb);
    a=0;b=0;
    #2
    a=0;b=1;
    #2
    a=1;b=0;
    #2
    a=1;b=1;
    #2;
end

 endmodule