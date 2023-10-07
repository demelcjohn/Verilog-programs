module notgate_dataflow(a, y);
input a;
output y;

assign y = ~a;

endmodule