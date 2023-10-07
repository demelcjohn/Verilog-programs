//Half Adder using Data Flow Level
//halfadder1.v

module halfadder1(input A,input B,output S,output C);
assign S = A^B;
assign C = A&B;
endmodule
