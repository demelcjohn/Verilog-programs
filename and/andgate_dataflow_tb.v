module andgate_dataflow_tb;
wire t_y;
reg t_a, t_b;

andgate_dataflow mygate( .a(t_a), .b(t_b), .y(t_y));

initial
begin
    $monitor(t_a, t_b, t_y);
    $dumpfile("andgate_dataflow_tb.vcd");
    $dumpvars(0, andgate_dataflow_tb);

    t_a = 1'b0;
    t_b = 1'b0;

    #5
    t_a = 1'b0;
    t_b = 1'b1;

    #5
    t_a = 1'b1;
    t_b = 1'b0;

    #5
    t_a = 1'b1;
    t_b = 1'b1;

    #5;

end
endmodule