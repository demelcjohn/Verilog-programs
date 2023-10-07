//basicgates2tb.v

module basicgates2tb;
wire a_out,o_out,n_out;
reg t_x,t_y;
and2 my_mod1(.x(t_x),.y(t_y),.out(a_out));
or2 my_mod2(.x(t_x),.y(t_y),.out(o_out));
not2 my_mod3(.x(t_x),.out(n_out));
integer i;
initial
begin
$dumpfile("basicgates2.vcd");
$dumpvars(0,basicgates2tb);
$display("Basic Gates using Gate level");
$monitor("x = %b | y = %b | x&y = %b | x|y = %b | ~x = %b",t_x,t_y,a_out,o_out,n_out);
for(i=0; i<4; i=i+1) begin
{t_x,t_y} = i;
#5;
end
end
endmodule
