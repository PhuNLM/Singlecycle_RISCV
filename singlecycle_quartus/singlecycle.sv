
module singlecycle(i_clk, i_rst_n, o_pc_debug, o_insn_vld, o_io_ledr, o_io_ledg, o_io_hex0, o_io_hex1, o_io_hex2,o_io_hex3,o_io_hex4,o_io_hex5,o_io_hex6,o_io_hex7, o_io_lcd, i_io_sw, i_io_btn,
addr_to_sram, sramdq, sramcen, sramwen, sramlbn, sramubn, sramoen);
output logic [17:0] addr_to_sram;
output logic [15:0] sramdq;
output logic sramcen;
output logic sramwen;
output logic sramlbn;
output logic sramubn;
output logic sramoen;

input logic i_clk, i_rst_n;
input logic [31:0] i_io_sw;
input logic [3:0] i_io_btn;
output logic o_insn_vld;
output logic [31:0] o_pc_debug;
output logic [31:0] o_io_ledr;
output logic [31:0] o_io_ledg;
output logic [6:0] o_io_hex0;
output logic [6:0] o_io_hex1;
output logic [6:0] o_io_hex2;
output logic [6:0] o_io_hex3;
output logic [6:0] o_io_hex4;
output logic [6:0] o_io_hex5;
output logic [6:0] o_io_hex6;
output logic [6:0] o_io_hex7;
output logic [31:0] o_io_lcd;



	
logic [31:0] pc_next, pc, instr, operand_a, operand_b, alu_data, rs2_data, ld_data, wb_data;
logic pc_sel;
logic rd_wren;
logic br_un;
logic insn_vld;
logic br_less;
logic br_equal;
logic opa_sel;
logic opb_sel;
logic [3:0] alu_op;
logic mem_wren;
logic [1:0] wb_sel;
logic [31:0] rs1_data;
logic [31:0] immgen;
logic [2:0] four;
logic [31:0] rd_data;
logic [2:0] imm_sel;
assign four = 3'd4;
wire [31:0] pc_temp;
wire [31:0] pc_next_temp;
wire [31:0] pc_four;
assign pc_temp = pc;
assign pc_next_temp = pc_next;


control_unit controlunit(.pc_sel(pc_sel),
								 .rd_wren(rd_wren),
								 .inst_vld(o_insn_vld),
								 .imm_sel(imm_sel),
								 .br_un(br_un),
								 .br_less(br_less),
								 .br_equal(br_equal),
								 .opa_sel(opa_sel),
								 .opb_sel(opb_sel),
								 .alu_op(alu_op),
								 .mem_wren(mem_wren),
								 .wb_sel(wb_sel),
								 .inst_in(instr));


mux2 pcmux(.x(pc_four),
			  .y(alu_data),
			  .sel(pc_sel),
			  .out(pc_next));

PC PC(.i_clk(i_clk),
		.i_rst(i_rst_n),
		.pc_next(pc_next),
		.pc(pc));
		
assign pc_four = pc_temp + 'd4;

imem imem(.i_clk(i_clk),
			 .i_rst(i_rst_n),
			 .addr_in(pc),
			 .inst_out(instr));

regfile regfile(.i_clk(i_clk),
					 .i_rst(i_rst_n),
					 .i_rs1_addr(instr[19:15]),
					 .i_rs2_addr(instr[24:20]),
					 .o_rs1_data(rs1_data),
					 .o_rs2_data(rs2_data),
					 .i_rd_addr(instr[11:7]),
					 .i_rd_data(wb_data),
					 .i_rd_wren(rd_wren));

ImmGen ImmGen(.inst_in(instr),
				  .sel(imm_sel),
				  .imm_out(immgen));

brc brc(.i_rs1_data(rs1_data),
		  .i_rs2_data(rs2_data),
		  .i_br_un(br_un),
		  .o_br_less(br_less),
		  .o_br_equal(br_equal));

mux2 muxa(.x(rs1_data),
			 .y(pc),
			 .sel(opa_sel),
			 .out(operand_a));

mux2 muxb(.x(immgen),
			 .y(rs2_data),
			 .sel(opb_sel),
			 .out(operand_b));

alu alu(.i_operand_a(operand_a),
		  .i_operand_b(operand_b),
		  .i_alu_op(alu_op),
		  .o_alu_data(alu_data));
		  
//dmem dmem(.i_clk(i_clk),
//			 .i_rst(i_rst_n),
//			 .alu_data(alu_data),
//			 .rs2_data(rs2_data),
//			 .mem_wren(mem_wren),
//			 .mem_out(ld_data));
lsu lsu(.i_clk(i_clk),
		  .i_reset_n(i_rst_n),
		  .i_st_data(rs2_data),
		  .i_lsu_addr(alu_data),
		  .i_lsu_wren(mem_wren),
		  .o_ld_data(ld_data),
		  .o_io_ledr(o_io_ledr),
		  .o_io_ledg(o_io_ledg),
		  .o_io_hex0(o_io_hex0),
        .o_io_hex1(o_io_hex1),
        .o_io_hex2(o_io_hex2),
        .o_io_hex3(o_io_hex3),
        .o_io_hex4(o_io_hex4),
        .o_io_hex5(o_io_hex5),
        .o_io_hex6(o_io_hex6),
        .o_io_hex7(o_io_hex7),
		  .o_io_lcd(o_io_lcd),
		  .i_io_sw(i_io_sw),
		  .i_io_btn(i_io_btn),
		  .addr_to_sram(addr_to_sram),
		  .sramdq(sramdq),
		  .sramcen(sramcen),
		  .sramwen(sramwen),
		  .sramlbn(sramlbn),
		  .sramubn(sramubn),
		  .sramoen(sramoen));
			 
mux4 muxwb(.a(ld_data),
			  .b(alu_data),
			  .c(pc_four),
			  .d(),
			  .sel(wb_sel),
			  .y(wb_data));

FF32 FFPC(.i_clk(i_clk),
			 .i_rst(i_rst_n),
			 .D(pc),
			 .Q(o_pc_debug));
endmodule