module regfile(i_clk, i_rst, i_rs1_addr, i_rs2_addr, o_rs1_data, o_rs2_data, i_rd_addr, i_rd_data, i_rd_wren);
input i_clk, i_rst;
input i_rd_wren;
input logic [4:0] i_rs1_addr, i_rs2_addr, i_rd_addr;
input logic [31:0] i_rd_data;
output logic [31:0] o_rs1_data, o_rs2_data;

reg [31:0] registers[31:0];


always @(posedge i_clk) begin
	if (!i_rst) begin
		for(int i = 0; i < 32; i++) begin
			registers[i] <= 32'b0;
		end
	end
	else begin
		if (i_rd_wren) begin
			registers[i_rd_addr] <= i_rd_data;
			registers[0] <= 32'b0;

		end
		else 
			registers[i_rd_addr] <= registers[i_rd_addr];
			registers[0] <= 32'b0;

	end


end

assign o_rs1_data = registers[i_rs1_addr];
assign o_rs2_data = registers[i_rs2_addr];

endmodule 