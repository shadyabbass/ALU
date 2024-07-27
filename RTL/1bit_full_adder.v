module one_bit_full_adder (
input a,b,cin,
output sum, cout
);

assign {cout,sum}= {0,a}+b+cin;

endmodule
