module notgate_dataflow_tb;
reg a;
wire y;

notgate_dataflow notgate(.a(a), .y(y));

initial begin
    $monitor("a = %b, y = %b", a, y);
    $dumpfile("notgate_dataflow_tb.vcd");
    $dumpvars(0, notgate_dataflow_tb);

    a = 0;
    #5
    a = 1;
    #5;
end

endmodule