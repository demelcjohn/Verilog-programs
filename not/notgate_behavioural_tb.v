module notgate_behavioural_tb;
reg a;
wire y;

notgate_behavioural notgate(.a(a), .y(y));

initial begin
    $monitor("a = %b, y = %b", a, y);
    $dumpfile("notgate_behavioural_tb.vcd");
    $dumpvars(0, notgate_behavioural_tb);

    a = 0;
    #5
    a = 1;
    #5;
end

endmodule