//1 bit register
module RegBit(BitOut,Bitdata, WriteEn,Reset,Clk);
output BitOut;//here variable is wire because the output of the FF is a combinational logic, which need not to be a reg.
//The 'reg' datatype is only needed when there is a need to store the value until the next value get updated to the old value.
// The 'reg' datatype is needed inside always*() block.
input Bitdata, WriteEn,Reset,Clk;
wire d,f1,f2;
wire reset;

//It should be bitOut, when write is not enabled
//It should be BitData, when wrte is enabled.
and #(50) U1(f1, BitOut, (~WriteEn));
and #(50) U2(f2, BitData, WriteEn);
or #(50) U3(d,f1,f2);
//instance name should be declared
D_FF d_FF0(BitOut,d,reset,clk);
endmodule

module D_FF(d_out, d_in,reset,clk);
    output reg d_out;
    input d_in,reset, clk;

//when I am using asynchronous reset, reset should be enabled in the on the active edge of the reset signal
    This allows the reset signal to immediately reset the flip-flop to a known stateWhat
    always @(posedge clk or reset) begin
        d_out= reset?0:d_in;    
    end
endmodule
