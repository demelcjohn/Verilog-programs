module demux_tb;
wire d0, d1, d2, d3;
reg s0, s1, i, e;

demux func(.d0(d0), .d1(d1), .d2(d2), .d3(d3), .s0(s0), .s1(s1), .i(i), .e(e));
initial
begin
    $monitor("s0 = %b, s1 = %b, i = %b, e = %b, d0 = %b, d1 = %b, d2 = %b, d3 = %b", s0, s1, i, e, d0, d1, d2, d3);
    $dumpfile("demux_tb.vcd");
    $dumpvars(0, demux_tb);

    i = 1;
    e = 1;

    s0 = 0;
    s1 = 0;

    #5

    s0 = 0;
    s1 = 1;

    #5

    s0 = 1;
    s1 = 0;

    #5

    s0 = 1;
    s1 = 1;

    #5;
end
endmodule