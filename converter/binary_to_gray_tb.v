module binary_to_gray_tb;

reg b0,b1,b2,b3;
wire g0,g1,g2,g3;

binary_to_gray conv1(b0,b1,b2,b3,g0,g1,g2,g3);
initial
begin
    $monitor("b3 = %b, b2 = %b, b1 = %b, b0 = %b, g3 = %b, g2 = %b, g1 = %b, g0 = %b", b3, b2, b1, b0, g3, g2, g1, g0);
    $dumpfile("binary_to_gray_tb.vcd");
    $dumpvars(0,binary_to_gray_tb);
    b3=0;b2=0;b1=0;b0=0;
    #1;
    b3=0;b2=0;b1=0;b0=1;
    #1;
    b3=0;b2=0;b1=1;b0=0;
    #1;
    b3=0;b2=0;b1=1;b0=1;
    #1;
    b3=0;b2=1;b1=0;b0=0;
    #1;
    b3=0;b2=1;b1=0;b0=1;
    #1;
    b3=0;b2=1;b1=1;b0=0;
    #1;
    b3=0;b2=1;b1=1;b0=1;
    #1;
    b3=1;b2=0;b1=0;b0=0;
    #1;
    b3=1;b2=0;b1=0;b0=1;
    #1;
    b3=1;b2=0;b1=1;b0=0;
    #1;
    b3=1;b2=0;b1=1;b0=1;
    #1;
    b3=1;b2=1;b1=0;b0=0;
    #1;
    b3=1;b2=1;b1=0;b0=1;
    #1;
    b3=1;b2=1;b1=1;b0=0;
    #1;
    b3=1;b2=1;b1=1;b0=1;
    #1;

end


endmodule