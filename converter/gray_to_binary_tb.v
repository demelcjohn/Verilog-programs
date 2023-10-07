module gray_to_binary_tb;

wire b0,b1,b2,b3;
reg g0,g1,g2,g3;

gray_to_binary conv1(b0,b1,b2,b3,g0,g1,g2,g3);
initial
begin
    $monitor("g3 = %b, g2 = %b, g1 = %b, g0 = %b, b3 = %b, b2 = %b, b1 = %b, b0 = %b", g3, g2, g1, g0, b3, b2, b1, b0);
    $dumpfile("gray_to_binary_tb.vcd");
    $dumpvars(0,gray_to_binary_tb);
    g3=0;g2=0;g1=0;g0=0;
    #1;
    g3=0;g2=0;g1=0;g0=1;
    #1;
    g3=0;g2=0;g1=1;g0=0;
    #1;
    g3=0;g2=0;g1=1;g0=1;
    #1;
    g3=0;g2=1;g1=0;g0=0;
    #1;
    g3=0;g2=1;g1=0;g0=1;
    #1;
    g3=0;g2=1;g1=1;g0=0;
    #1;
    g3=0;g2=1;g1=1;g0=1;
    #1;
    g3=1;g2=0;g1=0;g0=0;
    #1;
    g3=1;g2=0;g1=0;g0=1;
    #1;
    g3=1;g2=0;g1=1;g0=0;
    #1;
    g3=1;g2=0;g1=1;g0=1;
    #1;
    g3=1;g2=1;g1=0;g0=0;
    #1;
    g3=1;g2=1;g1=0;g0=1;
    #1;
    g3=1;g2=1;g1=1;g0=0;
    #1;
    g3=1;g2=1;g1=1;g0=1;
    #1;

end


endmodule