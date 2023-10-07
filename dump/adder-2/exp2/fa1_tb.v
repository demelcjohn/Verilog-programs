module fa1_tb;

reg a,b,cin;
wire s,cout;

fa1 fA1(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));

initial begin
    $display("Full Adder");
    $dumpfile("fa1.vcd");
    $dumpvars(0,fa1_tb);
    $monitor("A = %b | B = %b | Cin = %b | S = %b | Cout = %b",a,b,cin,s,cout);

    a = 1'b0;
    b = 1'b0;
    cin = 1'b0;
    #2

    cin = 1'b1;
    #2

    b = 1'b1;
    cin = 1'b0;
    #2

    cin = 1'b1;
    #2

    a = 1'b1;
    b = 1'b0;
    cin = 1'b0;
    #2

    cin = 1'b1;
    #2

    b = 1'b1;
    cin = 1'b0;
    #2

    cin = 1'b1;
    #2
    $finish;

end

endmodule