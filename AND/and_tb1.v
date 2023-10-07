module and_tb1;

wire t_out;
reg t_x,t_y;

and1 my_mod(.x(t_x),.y(t_y),.out(t_out));

initial
begin
$display("AND1");
$dumpfile("and1.vcd");
$dumpvars(0,and_tb1);
$monitor("x = %b | y = %b | x&y = %b",t_x,t_y,t_out);

t_x = 1'b0;
t_y = 1'b0;
#5

t_x = 1'b0;
t_y = 1'b1;
#5
t_x = 1'b1;
t_y = 1'b0;
#5
t_x = 1'b1;
t_y = 1'b1;
#5 $finish;
end
endmodule
