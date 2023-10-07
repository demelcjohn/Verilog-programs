`include "halfadder.v"

module fulladderuhalf(input A,input B,input Cin,output S,output Cout);

wire outS,outC,out2;
halfadder ha1(A,B,outS,outC);
halfadder ha2(outS,Cin,S,out2);
assign Cout = out2|outC;

endmodule
