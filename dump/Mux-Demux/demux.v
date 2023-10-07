module demux(input E,input S1,input S0,output A,output B,output C,output D);

assign A = (E&(~S1)&(~S0));
assign B = (E&(~S1)&(S0));
assign C = (E&(S1)&(~S0));
assign D = (E&(S1)&(S0));

endmodule
