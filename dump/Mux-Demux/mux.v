module mux(input A,input B,input C,input D,input S1,input S0,output Out);

assign Out = ((A&(~S1)&(~S0))|(B&(~S1)&S0)|(C&S1&(~S0))|(D&S1&S0));

endmodule
