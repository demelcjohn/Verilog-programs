module bool1(input A,input B,input C, output F);

assign F = ((~A)&B)|(~C);

endmodule
