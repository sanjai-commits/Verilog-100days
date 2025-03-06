module fulladder(output Sum, Carry, input A,B,Cin);
	always(*) Sum = A^B^Cin;
	assign Carry = (A&B)+(B&C)+(C&A);
endmodule