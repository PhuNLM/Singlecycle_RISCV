module ImmGen(inst_in, sel, imm_out);
input [31:0] inst_in;
input [2:0] sel;
output reg [31:0] imm_out;

parameter I = 3'd1;
parameter S = 3'd2;
parameter B = 3'd3;
parameter Jal = 3'd4;
parameter Jalr = 3'd5;
parameter U = 3'd6;

always @(inst_in or sel) begin
	case(sel)
		I: imm_out = {{20{inst_in[31]}},inst_in[31:20]};
		S: imm_out = {{20{inst_in[31]}},inst_in[31:25],inst_in[11:7]};
		B: imm_out = {{20{inst_in[31]}},inst_in[7],inst_in[30:25],inst_in[11:8],1'b0};
		Jal: imm_out = {{12{inst_in[31]}}, inst_in[19:12], inst_in[20], inst_in[30:21],1'b0};
		Jalr: imm_out = {{20{inst_in[31]}},inst_in[31:20]};
		U: imm_out = {inst_in[31:12], 12'b0};
		default: imm_out = 32'd0;
	endcase
end

endmodule  