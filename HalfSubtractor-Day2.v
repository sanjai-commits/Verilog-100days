module HS(output D,Bout, input A,B);
    always@(*) D = A^B;
    always@(*) Bout = (~A)&B; 
endmodule 