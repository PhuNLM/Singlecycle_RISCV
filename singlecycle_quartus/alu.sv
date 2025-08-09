module alu(i_operand_a,  i_operand_b, i_alu_op, o_alu_data);
input logic  [31:0] i_operand_a,  i_operand_b;
input logic [3:0] i_alu_op;
output logic [31:0] o_alu_data;

//wire [31:0] ad, su, sl, slu, xo, o, an, sl, sr, ra;
wire [31:0] a0, b0, a1, b1, a2, b2, a3, b3, a4, b4, a5, b5, a6, b6, a7, b7, a8, b8, a9, b9;
wire [31:0] o0, o1, o2, o3, o4 ,o5 ,o6 ,o7 ,o8 ,o9;

assign a0 = i_operand_a;
assign b0 = i_operand_b;
assign a1 = i_operand_a;
assign b1 = i_operand_b;
assign a2 = i_operand_a;
assign b2 = i_operand_b;
assign a3 = i_operand_a;
assign b3 = i_operand_b;
assign a4 = i_operand_a;
assign b4 = i_operand_b;
assign a5 = i_operand_a;
assign b5 = i_operand_b;
assign a6 = i_operand_a;
assign b6 = i_operand_b;
assign a7 = i_operand_a;
assign b7 = i_operand_b;
assign a8 = i_operand_a;
assign b8 = i_operand_b;
assign a9 = i_operand_a;
assign b9 = i_operand_b;



FA_32 FA_32(.x(a0),
		.y(b0),
		.out(o0),
		.z(0),
		.c());
FS FS(.x(a1),
		.y(b1),
		.out(o1),
		.s());
SLT SLT(.x(a2),
		  .y(b2),
		  .out(o2));
SLTU SLTU(.x(a3),
			 .y(b3),
			 .out(o3));
EXOR EXOR(.x(a4),
			 .y(b4),
			 .out(o4));
ORR ORR(.x(a5),
		  .y(b5),
		  .out(o5));
ANDD ANDD(.x(a6),
			 .y(b6),
			 .out(o6));
SLL SLL(.x(a7),
		  .y(b7),
		  .out(o7));
SRL SRL(.x(a8),
		  .y(b8),
		  .out(o8));
SRA SRA(.x(a9),
		  .y(b9),
		  .out(o9));



Muxx Mux(.a0(o0),
		  .a1(o1),
		  .a2(o2),
		  .a3(o3),
		  .a4(o4),
		  .a5(o5),
		  .a6(o6),
		  .a7(o7),
		  .a8(o8),
		  .a9(o9),
		  .sel(i_alu_op),
		  .out(o_alu_data)
		);



endmodule

module FA(x, y, z, out, c);
input   x, y;
input  z;
output  out;
output  c;

assign out = x^y^z;
assign c = x&y|y&z|x&z;

endmodule: FA  

module FA_32(x, y, z, out, c);
input [31:0] x, y;
input  z;
output  [31:0] out;
output  c;



wire c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31;
assign c = c31;
FA FA0(.x(x[0]),
		 .y(y[0]),
		 .z(z),
		 .c(c0),
		 .out(out[0]));	 
		 
FA FA1(.x(x[1]),
		 .y(y[1]),
		 .z(c0),
		 .c(c1),
		 .out(out[1]));
		 
FA FA2(.x(x[2]),
		 .y(y[2]),
		 .z(c1),
		 .c(c2),
		 .out(out[2]));
		 
FA FA3(.x(x[3]),
		 .y(y[3]),
		 .z(c2),
		 .c(c3),
		 .out(out[3]));
		 
FA FA4(.x(x[4]),
		 .y(y[4]),
		 .z(c3),
		 .c(c4),
		 .out(out[4]));
		 
FA FA5(.x(x[5]),
		 .y(y[5]),
		 .z(c4),
		 .c(c5),
		 .out(out[5]));
		 
FA FA6(.x(x[6]),
		 .y(y[6]),
		 .z(c5),
		 .c(c6),
		 .out(out[6]));
		 
FA FA7(.x(x[7]),
		 .y(y[7]),
		 .z(c6),
		 .c(c7),
		 .out(out[7]));
		 
FA FA8(.x(x[8]),
		 .y(y[8]),
		 .z(c7),
		 .c(c8),
		 .out(out[8]));
		 
FA FA9(.x(x[9]),
		 .y(y[9]),
		 .z(c8),
		 .c(c9),
		 .out(out[9]));
		 
FA FA10(.x(x[10]),
		 .y(y[10]),
		 .z(c9),
		 .c(c10),
		 .out(out[10]));
		 
FA FA11(.x(x[11]),
		 .y(y[11]),
		 .z(c10),
		 .c(c11),
		 .out(out[11]));
		 
FA FA12(.x(x[12]),
		 .y(y[12]),
		 .z(c11),
		 .c(c12),
		 .out(out[12]));
		 
FA FA13(.x(x[13]),
		 .y(y[13]),
		 .z(c12),
		 .c(c13),
		 .out(out[13]));
		 
FA FA14(.x(x[14]),
		 .y(y[14]),
		 .z(c13),
		 .c(c14),
		 .out(out[14]));
FA FA15(.x(x[15]),
		 .y(y[15]),
		 .z(c14),
		 .c(c15),
		 .out(out[15]));
		 
FA FA16(.x(x[16]),
		 .y(y[16]),
		 .z(c15),
		 .c(c16),
		 .out(out[16]));
FA FA17(.x(x[17]),
		 .y(y[17]),
		 .z(c16),
		 .c(c17),
		 .out(out[17]));
		 
FA FA18(.x(x[18]),
		 .y(y[18]),
		 .z(c17),
		 .c(c18),
		 .out(out[18]));
		 
FA FA19(.x(x[19]),
		 .y(y[19]),
		 .z(c18),
		 .c(c19),
		 .out(out[19]));
		 
FA FA20(.x(x[20]),
		 .y(y[20]),
		 .z(c19),
		 .c(c20),
		 .out(out[20]));
		 
FA FA21(.x(x[21]),
		 .y(y[21]),
		 .z(c20),
		 .c(c21),
		 .out(out[21]));
		 
FA FA22(.x(x[22]),
		 .y(y[22]),
		 .z(c21),
		 .c(c22),
		 .out(out[22]));
		 
FA FA23(.x(x[23]),
		 .y(y[23]),
		 .z(c22),
		 .c(c23),
		 .out(out[23]));
		 
FA FA24(.x(x[24]),
		 .y(y[24]),
		 .z(c23),
		 .c(c24),
		 .out(out[24]));
		 
FA FA25(.x(x[25]),
		 .y(y[25]),
		 .z(c24),
		 .c(c25),
		 .out(out[25]));
		 
FA FA26(.x(x[26]),
		 .y(y[26]),
		 .z(c25),
		 .c(c26),
		 .out(out[26]));
		 
FA FA27(.x(x[27]),
		 .y(y[27]),
		 .z(c26),
		 .c(c27),
		 .out(out[27]));
		 
FA FA28(.x(x[28]),
		 .y(y[28]),
		 .z(c27),
		 .c(c28),
		 .out(out[28]));
		 
FA FA29(.x(x[29]),
		 .y(y[29]),
		 .z(c28),
		 .c(c29),
		 .out(out[29]));
		 
FA FA30(.x(x[30]),
		 .y(y[30]),
		 .z(c29),
		 .c(c30),
		 .out(out[30]));
		 
FA FA31(.x(x[31]),
		 .y(y[31]),
		 .z(c30),
		 .c(c31),
		 .out(out[31]));	 

endmodule: FA_32


module FS(x, y,s, out);
input  [31:0] x, y;
output  [31:0] out;
output s;

wire [31:0] ycom;
wire c;

assign ycom = ~y;
assign c = 1;

FA_32 FA1(.x(x),
			.y(ycom),
			.z(c),
			.out(out),
			.c(s));

endmodule: FS

module SLTU(x, y, out);
input [31:0] x, y;
output [31:0] out;

wire outtemp;

FS FS(.x(y),
		.y(x),
		.s(outtemp),
		.out());

assign out = {31'b0,outtemp};


endmodule: SLTU


module SLT (x, y, out);
input logic [31:0] x, y;
output logic  [31:0] out;

wire t;
wire a_s;
wire b_s;

assign a_s = x[31];
assign b_s = y[31];

FS FS(.x(y), 
		.y(x),
		.s(t),
		.out());
always @(*) begin
	if (a_s && !b_s)
		out = 32'b1;
	else if (!a_s && b_s)
		out = 32'b0;
	else 
		out = {31'b0,t};
end
endmodule: SLT

module EXOR(x, y, out);
input [31:0] x, y;
output [31:0] out;

assign out = x^y;

endmodule: EXOR


module ANDD(x, y, out);
input [31:0] x, y;
output [31:0] out;

assign out = x&y;


endmodule: ANDD

module ORR(x, y, out);
input [31:0] x, y;
output [31:0] out;

assign out = x|y;

endmodule: ORR

module SLL (x, y, out);
input [31:0] x, y;
output logic [31:0] out;

always @(*) begin
	case(y)
		32'd1: out = {x[30:0], 1'b0};
		32'd2: out = {x[29:0], 2'b0};
		32'd3: out = {x[28:0], 3'b0};
		32'd4: out = {x[27:0], 4'b0};
		32'd5: out = {x[26:0], 5'b0};
		32'd6: out = {x[25:0], 6'b0};
		32'd7: out = {x[24:0], 7'b0};
		32'd8: out = {x[23:0], 8'b0};
		32'd9: out = {x[22:0], 9'b0};
		32'd10: out = {x[21:0], 10'b0};
		32'd11: out = {x[20:0], 11'b0};
		32'd12: out = {x[19:0], 12'b0};
		32'd13: out = {x[18:0], 13'b0};
		32'd14: out = {x[17:0], 14'b0};
		32'd15: out = {x[16:0], 15'b0};
		32'd16: out = {x[15:0], 16'b0};
		32'd17: out = {x[14:0], 17'b0};
		32'd18: out = {x[13:0], 18'b0};
		32'd19: out = {x[12:0], 19'b0};
		32'd20: out = {x[11:0], 20'b0}; 
		32'd21: out = {x[10:0], 21'b0};
		32'd22: out = {x[9:0], 22'b0};
		32'd23: out = {x[8:0], 23'b0};
		32'd24: out = {x[7:0], 24'b0};
		32'd25: out = {x[6:0], 25'b0};
		32'd26: out = {x[5:0], 26'b0};
		32'd27: out = {x[4:0], 27'b0};
		32'd28: out = {x[3:0], 28'b0};
		32'd29: out = {x[2:0], 29'b0};
		32'd30: out = {x[1:0], 30'b0};
		32'd31: out = {x[0], 31'b0};
		default:  out = x;
	endcase
end

endmodule: SLL

module SRL (x, y, out);
input [31:0] x, y;
output logic [31:0] out;

always @(*) begin
	case(y)
		32'd1: out = {1'b0 ,x[31:1]};
		32'd2:out = {2'b0 ,x[31:2]};
		32'd3: out = {3'b0 ,x[31:3]};
		32'd4: out = {4'b0 ,x[31:4]};
		32'd5: out = {5'b0 ,x[31:5]};
		32'd6: out = {6'b0 ,x[31:6]};
		32'd7: out = {7'b0 ,x[31:7]};
		32'd8: out = {8'b0 ,x[31:8]};
		32'd9: out = {9'b0 ,x[31:9]};
		32'd10: out = {10'b0 ,x[31:10]};
		32'd11: out = {11'b0 ,x[31:11]};
		32'd12: out = {12'b0 ,x[31:12]};
		32'd13: out = {13'b0 ,x[31:13]};
		32'd14: out = {14'b0 ,x[31:14]};
		32'd15: out = {15'b0 ,x[31:15]};
		32'd16: out = {16'b0 ,x[31:16]};
		32'd17: out = {17'b0 ,x[31:17]};
		32'd18: out = {18'b0 ,x[31:18]};
		32'd19: out = {19'b0 ,x[31:19]};
		32'd20: out = {20'b0 ,x[31:20]};
		32'd21: out = {21'b0 ,x[31:21]};
		32'd22: out = {22'b0 ,x[31:22]};
		32'd23: out = {23'b0 ,x[31:23]};
		32'd24: out = {24'b0 ,x[31:24]};
		32'd25: out = {25'b0 ,x[31:25]};
		32'd26: out = {26'b0 ,x[31:26]};
		32'd27: out = {27'b0 ,x[31:27]};
		32'd28: out = {28'b0 ,x[31:28]};
		32'd29: out = {29'b0 ,x[31:29]};
		32'd30: out = {30'b0 ,x[31:30]};
		32'd31: out = {31'b0 ,x[31:31]};
		default:  out = x;
	endcase
end

endmodule: SRL

module SRA (x, y, out);
input [31:0] x, y;
output logic [31:0] out;

wire x_s = x[31];
//wire [31:0] x_temp, y_temp;
//wire out_temp;

//assign x_temp = x;
//assign y_temp = y;

//SRL SRL(.x(x_temp),
	//	  .y(y_temp),
	//	  .out(out_temp));


always@(*)
begin
	if (x_s)
		begin
				case(y)
					32'd1: out = {1'd1 ,x[31:1]};
					32'd2: out = {2'd3 ,x[31:2]};
					32'd3: out = {3'd7 ,x[31:3]};
					32'd4: out = {4'd15 ,x[31:4]};
					32'd5: out = {5'd31 ,x[31:5]};
					32'd6: out = {6'd63 ,x[31:6]};
					32'd7: out = {7'd127 ,x[31:7]};
					32'd8: out = {8'd255 ,x[31:8]};
					32'd9: out = {9'd511 ,x[31:9]};
					32'd10: out = {10'd1023 ,x[31:10]};
					32'd11: out = {11'd2047 ,x[31:11]};
					32'd12: out = {12'd4095 ,x[31:12]};
					32'd13: out = {13'd8191 ,x[31:13]};
					32'd14: out = {14'd16383 ,x[31:14]};
					32'd15: out = {15'd32767 ,x[31:15]};
					32'd16: out = {16'd65535 ,x[31:16]};
					32'd17: out = {17'd131071 ,x[31:17]};
					32'd18: out = {18'd262143 ,x[31:18]};
					32'd19: out = {19'd524287 ,x[31:19]};
					32'd20: out = {20'd1048575 ,x[31:20]};
					32'd21: out = {21'd2097151 ,x[31:21]};
					32'd22: out = {22'd4194303 ,x[31:22]};
					32'd23: out = {23'd8388607 ,x[31:23]};
					32'd24: out = {24'd16777215 ,x[31:24]};
					32'd25: out = {25'd33554431 ,x[31:25]};
					32'd26: out = {26'd67108863 ,x[31:26]};
					32'd27: out = {27'd134217727 ,x[31:27]};
					32'd28: out = {28'd268435455 ,x[31:28]};
					32'd29: out = {29'd536870911 ,x[31:29]};
					32'd30: out = {30'd1073741823 ,x[31:30]};
					32'd31: out = {31'd2147483647 ,x[31:31]};
					default:  out = x;
				 endcase
			end
	else begin
				case(y)
					32'd1: out = {1'b0 ,x[31:1]};
					32'd2:out = {2'b0 ,x[31:2]};
					32'd3: out = {3'b0 ,x[31:3]};
					32'd4: out = {4'b0 ,x[31:4]};
					32'd5: out = {5'b0 ,x[31:5]};
					32'd6: out = {6'b0 ,x[31:6]};
					32'd7: out = {7'b0 ,x[31:7]};
					32'd8: out = {8'b0 ,x[31:8]};
					32'd9: out = {9'b0 ,x[31:9]};
					32'd10: out = {10'b0 ,x[31:10]};
					32'd11: out = {11'b0 ,x[31:11]};
					32'd12: out = {12'b0 ,x[31:12]};
					32'd13: out = {13'b0 ,x[31:13]};
					32'd14: out = {14'b0 ,x[31:14]};
					32'd15: out = {15'b0 ,x[31:15]};
					32'd16: out = {16'b0 ,x[31:16]};
					32'd17: out = {17'b0 ,x[31:17]};
					32'd18: out = {18'b0 ,x[31:18]};
					32'd19: out = {19'b0 ,x[31:19]};
					32'd20: out = {20'b0 ,x[31:20]};
					32'd21: out = {21'b0 ,x[31:21]};
					32'd22: out = {22'b0 ,x[31:22]};
					32'd23: out = {23'b0 ,x[31:23]};
					32'd24: out = {24'b0 ,x[31:24]};
					32'd25: out = {25'b0 ,x[31:25]};
					32'd26: out = {26'b0 ,x[31:26]};
					32'd27: out = {27'b0 ,x[31:27]};
					32'd28: out = {28'b0 ,x[31:28]};
					32'd29: out = {29'b0 ,x[31:29]};
					32'd30: out = {30'b0 ,x[31:30]};
					32'd31: out = {31'b0 ,x[31:31]};
				 default:  out = x;
				 endcase
			end
 
end
	
endmodule: SRA

module Muxx(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, sel, out);
input logic [31:0] a0, a1, a2, a3, a4, a5, a6, a7, a8, a9;
input logic [3:0] sel;
output logic [32:0] out;

always@(*) begin
	case (sel)
		4'd0: out = a0;
		4'd1: out = a1;
		4'd2: out = a2;
		4'd3: out = a3;
		4'd4: out = a4;
		4'd5: out = a5;
		4'd6: out = a6;
		4'd7: out = a7;
		4'd8: out = a8;
		4'd9: out = a9;
		default: out = 32'b0;
	endcase
end

endmodule: Muxx