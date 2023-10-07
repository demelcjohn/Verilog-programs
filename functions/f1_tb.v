module f1_tb;
reg a, b, c;
wire f;

f1 func(.a(a), .b(b), .c(c), .f(f));

initial begin
    $monitor("a = %b, b = %b, c = %b, f = %b", a, b, c, f);
    $dumpfile("f1_tb.vcd");
    $dumpvars(0, f1_tb);

    a = 0;
    b = 0;
    c = 0;
    #1
    a = 0;
    b = 0;
    c = 1;
    #1
    a = 0;
    b = 1;
    c = 0;
    #1
    a = 0;
    b = 1;
    c = 1;
    #1
    a = 1;
    b = 0;
    c = 0;
    #1
    a = 1;
    b = 0;
    c = 1;
    #1
    a = 1;
    b = 1;
    c = 0;
    #1
    a = 1;
    b = 1;
    c = 1;
    #1;
end

endmodule