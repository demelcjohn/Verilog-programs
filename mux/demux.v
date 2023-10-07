module demux(d0, d1, d2, d3, s0, s1, i, e);
    input s0, s1, i, e;
    output d0, d1, d2, d3;

    assign d0 = ~s0 & ~s1 & i & e;
    assign d1 = ~s0 & s1 & i & e;
    assign d2 = s0 & ~s1 & i & e;
    assign d3 = s0 & s1 & i & e;
endmodule