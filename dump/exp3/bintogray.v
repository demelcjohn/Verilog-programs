module bintogray(input B3,input B2,input B1,input B0,output G3,output G2,output G1,output G0);

assign G3 = B3;
assign G2 = B3^B2;
assign G1 = B1^B2;
assign G0 = B1^B0;

endmodule
