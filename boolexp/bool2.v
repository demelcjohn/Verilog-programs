module bool2(input A,input B,input C,input D,output F);

wire not_A,not_C,BDxnor,out1,out2,out3;

not not1(not_A,A);
xnor xnor1(BDxnor,B,D);
not not2(not_C,C);
or or1(out1,not_C,BDxnor);
and and1(out2,out1,not_A);
and and2(out3,A,C,D);
or or2(F,out3,out2);

endmodule
