module notgate_tb;
wire t_y;
reg t_a;

notgate mygate( .a(t_a), .y(t_y));

initial
begin
    $monitor(t_a, t_y);
    $dumpfile("notgate_tb.vcd");
    $dumpvars(0, notgate_tb);

    t_a = 1'b0;

    #5
    t_a = 1'b1;

    #5;

end
endmodule