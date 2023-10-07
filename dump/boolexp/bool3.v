module bool3(input A,input B,input C,input D,output F);

assign F = (~B&D)|(A&(~C))|(C&D);

endmodule
