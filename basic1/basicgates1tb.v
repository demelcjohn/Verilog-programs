//basicgates1tb.v

module basicgates1tb;
wire a_out,o_out,n_out;
reg t_x,t_y;
and1 my_mod1(.x(t_x),.y(t_y),.out(a_out));
or1 my_mod2(.x(t_x),.y(t_y),.out(o_out));
not1 my_mod3(.x(t_x),.out(n_out));
initial
begin
$dumpfile("basicgates1.vcd");
$dumpvars(0,basicgates1tb);
$display("Basic Gates using Data flow");
$monitor("x = %b | y = %b | x&y = %b | x|y = %b | ~x = %b",t_x,t_y,a_out,o_out,n_out);
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
