module brc(i_rs1_data, i_rs2_data, i_br_un, o_br_less, o_br_equal);
input [31:0] i_rs1_data, i_rs2_data;
input i_br_un;
output reg o_br_less, o_br_equal;

wire [31:0] a0, a1, a2, b0, b1, b2;
wire o0, o1, o2;
//reg otemp;

assign a0 = i_rs1_data;
assign b0 = i_rs2_data;
assign a1 = i_rs1_data;
assign b1 = i_rs2_data;
assign a2 = i_rs1_data;
assign b2 = i_rs2_data;

SLT SLT(.x(a1),
		  .y(b1),
		  .out(o1));

SLTU SLTU(.x(a0),
			 .y(b0),
			 .out(o0));
zero zero(.x(a2),
			 .y(b2),
			 .out(o2));

always@(*) begin
	if (i_br_un) begin
		if (!o2) begin
			o_br_less = o0;
			o_br_equal = 0; end
		else begin
			o_br_equal = 1;
			o_br_less = 0; end
	end
	else begin
		if (!o2) begin
			o_br_less = o1;
			o_br_equal = 0; end
		else begin
			o_br_equal = 1;
			o_br_less = 0; end
	end
end




endmodule



module zero(x, y, out);
input [31:0] x, y;
output reg out;

wire [31:0] temp;

assign temp = x^y;

always@(*) begin
	if(!temp)
	 out = 1;
	else 
	 out = 0;
end
endmodule: zero
