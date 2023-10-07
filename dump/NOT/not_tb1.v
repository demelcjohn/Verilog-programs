module not_tb1;

wire t_out;
reg t_x;

not1 my_mod(.x(t_x),.out(t_out));

initial
begin
$display("NOT1");
$dumpfile("not1.vcd");
$dumpvars(0,not_tb1);
$monitor("x = %b | ~x = %b",t_x,t_out);

t_x = 1'b0;
#5

t_x = 1'b1;
#5 $finish;
end
endmodule
