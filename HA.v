module HA(output sum, carry, input A,B);
assign sum = A ^ B;
assign carry = A & B;
endmodule