module mux_tb; 
reg s0, s1, a, b, c, d;
wire y;

mux mux1(s0, s1, a, b, c, d, y);
initial
begin
    $monitor("s1 = %b, s0 = %b, a = %b, b = %b, c = %b, d = %b, y = %b", s1, s0, a, b, c, d, y);
    $dumpfile("mux.vcd");
    $dumpvars(0, mux_tb);

    s1=0;s0=0;a=1;b=0;c=0;d=0;
    #1;
    s1=0;s0=1;a=0;b=1;c=0;d=0;
    #1;
    s1=1;s0=0;a=0;b=0;c=1;d=0;
    #1;
    s1=1;s0=1;a=0;b=0;c=0;d=1;
    #1;


end

endmodule