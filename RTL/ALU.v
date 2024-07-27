module ALU(
input [7:0] a,b,
input [2:0] op_code,

output reg [7:0] out,
output reg carry_out,
output c_flag, zero_flag
);

// internal signals decleration
wire [7:0] temp;
wire c_temp;

// instantiation
eight_bit_adder_sub sub_OP (.a(a), .b(b^{8{op_code[0]}}), .cin(op_code[0]), .sum(temp), .cout(c_temp));

always@(*)
begin
case (op_code)
3'b000: begin
            out= temp;
            carry_out= c_temp;
        end
3'b001: begin
            out= temp;
            carry_out= c_temp;
        end
3'b010: out= a&b;
3'b011: out= a|b;
3'b100: out= a^b;
3'b101: out= (a>b);
3'b110: out= {a[6:0],1'b0};
3'b111: out= {b[6:0],1'b0};
endcase
end

assign zero_flag= (out==8'b00000000)? 1'b1 : 1'b0;
assign c_flag= (a>b)? 1'b1 : 1'b0;

endmodule
