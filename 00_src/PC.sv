module PC(i_clk, i_rst, pc_next, pc);
input logic i_clk, i_rst;
input logic [31:0] pc_next;
output logic [31:0] pc;

always @(posedge i_clk) begin
	if (!i_rst)
		pc <= 32'b0;
	else
		pc <= pc_next;
end

endmodule