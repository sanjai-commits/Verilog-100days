module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    
    wire [2:0] cin;
    
    FA FA_i1(.a(x[0]),.b(y[0]),.cin(1'b0),.cout(cin[0]),.sum(sum[0]));
    FA FA_i2(.a(x[1]),.b(y[1]),.cin(cin[0]),.cout(cin[1]),.sum(sum[1]));
    FA FA_i3(.a(x[2]),.b(y[2]),.cin(cin[1]),.cout(cin[2]),.sum(sum[2]));
    FA FA_i4(.a(x[3]),.b(y[3]),.cin(cin[2]),.cout(sum[4]),.sum(sum[3]));
endmodule
