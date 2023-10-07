`include "and2.v"

module and_tb2;

wire t_out;
reg t_x,t_y;

and2 my_mod(.x(t_x),.y(t_y),.out(t_out));

initial
begin
$display("AND");
$dumpfile("and2.vcd");
$dumpvars(0,and_tb2);
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
