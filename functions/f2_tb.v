module f2_tb;
reg a, b, c, d;
wire f;

f2 func(.a(a), .b(b), .c(c), .d(d), .f(f));

initial begin
    $monitor("a = %b, b = %b, c = %b, d = %b, f = %b", a, b, c, d, f);
    $dumpfile("f2_tb.vcd");
    $dumpvars(0, f2_tb);

    a = 0;
    b = 0;
    c = 0;
    d = 0;
    #1
    a = 0;
    b = 0;
    c = 0;
    d = 1;
    #1
    a = 0;
    b = 0;
    c = 1;
    d = 0;
    #1
    a = 0;
    b = 0;
    c = 1;
    d = 1;
    #1
    a = 0;
    b = 1;
    c = 0;
    d = 0;
    #1
    a = 0;
    b = 1;
    c = 0;
    d = 1;
    #1
    a = 0;
    b = 1;
    c = 1;
    d = 0;
    #1
    a = 0;
    b = 1;
    c = 1;
    d = 1;
    #1
    a = 1;
    b = 0;
    c = 0;
    d = 0;
    #1
    a = 1;
    b = 0;
    c = 0;
    d = 1;
    #1
    a = 1;
    b = 0;
    c = 1;
    d = 0;
    #1
    a = 1;
    b = 0;
    c = 1;
    d = 1;
    #1
    a = 1;
    b = 1;
    c = 0;
    d = 0;
    #1
    a = 1;
    b = 1;
    c = 0;
    d = 1;
    #1
    a = 1;
    b = 1;
    c = 1;
    d = 0;
    #1
    a = 1;
    b = 1;
    c = 1;
    d = 1;
    #1;
end

endmodule