module FF32(i_clk, i_rst, D, Q);
input i_clk, i_rst;
input logic [31:0] D;
output logic [31:0] Q;

always@(posedge i_clk) begin
	if (!i_rst)
		Q <= 32'b0;
	else 
		Q <= D;
end
endmodule

module FF1(i_clk, i_rst, D, Q);
input logic i_clk, i_rst;
input logic D;
output logic Q;
always@(posedge i_clk) begin
	if (i_rst)
		Q <= 32'b0;
	else 
		Q <= D;
end
endmodule: FF1