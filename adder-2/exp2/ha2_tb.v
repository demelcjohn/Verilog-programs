module ha2_tb;

reg x,y;
wire s,c;

ha2 HalfAdder(.x(x),.y(y),.s(s),.c(c));

initial 
begin
    $display("Half Adder Data Flow Level");
    $dumpfile("ha2.vcd");
    $dumpvars(0,ha2_tb);
    $monitor("x = %b | y = %b | S = %b | C = %b",x,y,s,c);

    x = 1'b0;
    y = 1'b0;
    #5

    y = 1'b1;
    #5

    x = 1'b1;
    y = 1'b0;
    #5

    y = 1'b1;
    #5
    $finish;
end

endmodule