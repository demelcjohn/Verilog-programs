module graytobin(input G3,input G2,input G1,input G0,output B3,output B2,output B1,output B0);

assign B3 = G3;
assign B2 = G3^G2;
assign B1 = G3^G2^G1;
assign B0 = G3^G2^G1^G0;

endmodule
