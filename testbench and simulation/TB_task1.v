module TB_task1;
reg [7:0] a_test, b_test;
reg [2:0] op_test;

wire [7:0] out_test;
wire cout_test, cflag_test, zflag_test;

// instantiation
ALU TB (.a(a_test), .b(b_test), .op_code(op_test), .out(out_test), .carry_out(cout_test), .c_flag(cflag_test), .zero_flag(zflag_test));


// test cases
initial
begin

a_test= 8'b0000_0111;
b_test= 8'b0000_0101;
op_test= 3'b000;
#100;

a_test= 8'b0000_0111;
b_test= 8'b0000_0101;
op_test= 3'b001;
#100;

a_test= 8'b0000_1111;
b_test= 8'b0000_0101;
op_test= 3'b001;
#100;

a_test= 8'b0000_0111;
b_test= 8'b0000_0011;
op_test= 3'b000;
#100;

a_test= 8'b0110_0111;
b_test= 8'b0100_0101;
op_test= 3'b010;
#100;

a_test= 8'b0000_0101;
b_test= 8'b0101_0101;
op_test= 3'b011;
#100;

a_test= 8'b0100_0111;
b_test= 8'b0010_0101;
op_test= 3'b100;
#100;

a_test= 8'b0000_0111;
b_test= 8'b0000_0101;
op_test= 3'b101;
#100;

a_test= 8'b0000_0100;
b_test= 8'b0000_0101;
op_test= 3'b110;
#100;

a_test= 8'b0000_0111;
b_test= 8'b0000_0001;
op_test= 3'b111;
#100;

a_test= 8'b0000_0111;
b_test= 8'b0000_1001;
op_test= 3'b101;
#100;

$stop;
end

endmodule