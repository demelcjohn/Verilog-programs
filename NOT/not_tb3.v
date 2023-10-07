module not_tb3;

wire t_out;
reg t_x;

not3 my_mod(.x(t_x),.out(t_out));

initial
begin
$display("NOT3");
$dumpfile("not3.vcd");
$dumpvars(0,not_tb3);
$monitor("x = %b | ~x = %b",t_x,t_out);

t_x = 1'b0;
#5

t_x = 1'b1;
#5 $finish;
end
endmodule
