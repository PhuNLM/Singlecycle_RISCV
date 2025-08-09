module control_unit(imm_sel, inst_in, pc_sel, rd_wren, inst_vld, br_un, br_less, br_equal, opa_sel, opb_sel, alu_op, mem_wren, wb_sel);
input [31:0] inst_in;
input br_less, br_equal;
output logic [2:0] imm_sel;
output logic pc_sel, rd_wren, br_un, opa_sel, opb_sel, inst_vld;
output logic mem_wren; //1 write e  0 read en
output logic [1:0]  wb_sel;
output logic [3:0] alu_op;

logic [4:0] opcode;
logic [2:0] funct3;
logic [6:0] funct7;

assign opcode = inst_in[6:2];
assign funct3 = inst_in[14:12];
assign funct7 = inst_in[31:25];

assign imm_sel = (opcode == 5'b01100) ? 3'b000 : 												//R
					  ((opcode == 5'b00000) | (opcode == 5'b00100)) ? 3'b001 :				//I
					  (opcode == 5'b01000) ? 3'b010 : 												//S
					  (opcode == 5'b11000) ? 3'b011 :												//B
					  (opcode == 5'b11011) ? 3'b100 :												//Jalr
					  (opcode == 5'b11001) ? 3'b101 :												//Jal
					  ((opcode == 5'b01101) | (opcode == 5'b00101)) ? 3'b110 : 3'b000;	//U
assign pc_sel = ((((opcode == 5'b11000)&&((funct3 == 3'b000)|(funct3 == 3'b101)|(funct3 == 3'b111)))&&br_equal)|(((opcode == 5'b11000)&&((funct3 == 3'b001)|(funct3 == 3'b100)|(funct3 == 3'b110)))&&br_less)|(((opcode == 5'b11000)&&((funct3 == 3'b001)|(funct3 == 3'b101)|(funct3 == 3'b111)))&&(~br_equal)&&(~br_less))|
	(((opcode == 5'b11011))|(opcode == 5'b11001)))?1'b1:1'b0;
assign rd_wren = ((opcode == 5'b01100) | (opcode == 5'b00100) | (opcode == 5'b11011) | (opcode == 5'b11001)|(opcode == 5'b00000)) ? 1'b1 : 1'b0;
assign inst_vld = ((!imm_sel)&&(!pc_sel)&&(!rd_wren)&&(!opa_sel)&&(!opb_sel)&&(!mem_wren)&&(!wb_sel)&&(!br_un))?1'b0:1'b1;
assign opa_sel = ((opcode == 5'b01100) | (opcode == 5'b00000) | (opcode == 5'b00100) | (opcode == 5'b11001)|(opcode == 5'b01000)) ? 1'b0 : 1'b1;
assign opb_sel = (opcode == 5'b01100) ? 1'b1 : 1'b0;
assign alu_op =  ((opcode == 5'b00000)|(opcode==5'b01000)|(opcode==5'b11000)|(opcode==5'b11011)|(opcode==5'b11001)|(opcode==5'b01101)|((opcode==5'b00100)&&(funct3==3'b000))|((opcode==5'b01100)&&(funct3==3'b000)&&(funct7 == 7'b0000000)))?4'b0000: //add
					  ((opcode == 5'b01100) && (funct3 == 3'b000) && (funct7 == 7'b0100000)) ? 4'b0001 : 																																								  //sub
					  (((opcode == 5'b01100) && (funct3 == 3'b010) && (funct7 == 7'b0000000)) | ((opcode == 5'b00100) && (funct3 == 3'b010))) ? 4'b0010 :																								  //slt
					  (((opcode == 5'b01100) && (funct3 == 3'b011) && (funct7 == 7'b0000000)) | ((opcode == 5'b00100) && (funct3 == 3'b011))) ? 4'b0011 : 																								  //sltu
					  (((opcode == 5'b01100) && (funct3 == 3'b100) && (funct7 == 7'b0000000)) | ((opcode == 5'b00100) && (funct3 == 3'b100))) ? 4'b0100 :																								  //xor 
					  (((opcode == 5'b01100) && (funct3 == 3'b110) && (funct7 == 7'b0000000)) | ((opcode == 5'b00100) && (funct3 == 3'b110))) ? 4'b0101 :                          //or
					  (((opcode == 5'b01100) && (funct3 == 3'b111) && (funct7 == 7'b0000000)) | ((opcode == 5'b00100) && (funct3 == 3'b111))) ? 4'b0110 :                          //and
					  (((opcode == 5'b01100) && (funct3 == 3'b001))|((opcode == 5'b00100) && (funct3 == 3'b001))) ? 4'b0111 :                                                                                                     //sll
					  (((opcode == 5'b01100) && (funct3 == 3'b101))|((opcode == 5'b00100) && (funct3 == 3'b101))) ? 4'b1000 :                                                                                                     //srl
					  ((((opcode == 5'b01100) && (funct3 == 3'b101) && (funct7 == 7'b0000000)))|(((opcode == 5'b00100) && (funct3 == 3'b101) && (funct7 == 7'b0000000)))) ? 4'b0111 : 4'b0000;                                                                //sra
assign mem_wren = ((opcode == 5'b01000)) ? 1'b1 : 1'b0;
assign wb_sel = ((opcode == 5'b00100) | (opcode == 5'b01100) | (opcode == 5'b011011) | (opcode == 5'b00101)) ? 2'b01 : 
					 ((opcode == 5'b11011) | (opcode == 5'b11001)) ? 2'b10 : 2'b00;
assign br_un = (((opcode == 5'b11000)&&((funct3 == 3'b110)|(funct3 == 3'b111)))|((opcode == 5'b00000)&&((funct3 == 3'b100)|(funct3 == 3'b101)))|((opcode == 5'b00100)&&(funct3 == 3'b011))|((opcode == 5'b01100)&&(funct3 == 3'b011)))?1'b1:1'b0;
endmodule