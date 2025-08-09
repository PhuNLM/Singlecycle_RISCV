module BCDto7Seg(in1, in2, in3, in4, out1, out2, out3, out4);
input logic [6:0] in1, in2, in3, in4;
output logic [6:0] out1, out2, out3, out4;

converter conv1(.in(in1), .out(out1));
converter conv2(.in(in2), .out(out2));
converter conv3(.in(in3), .out(out3));
converter conv4(.in(in4), .out(out4));


endmodule


module converter(in, out);
input logic [6:0] in;
output logic [6:0] out;

parameter A = 10;
parameter B = 11;
parameter C = 12;
parameter D = 13;
parameter E = 14;
parameter F = 15;


always @(in) begin
	case(in)
		7'd0: out = 7'b1000000;
		7'd1: out = 7'b1111001;
		7'd2: out = 7'b0100100;
		7'd3: out = 7'b0110000;
		7'd4: out = 7'b0011001;
		7'd5: out = 7'b0010010;
		7'd6: out = 7'b0000010;
		7'd7: out = 7'b1111000;
		7'd8: out = 7'b0000000;
		7'd9: out = 7'b0011000;
			A: out = 7'b0001000;
			B:	out = 7'b0000011;
			C: out = 7'b1000110;
			D: out = 7'b0100001;
			E: out = 7'b0000110;
			F: out = 7'b0001110;
		default: out = 7'b0000000;
	endcase
end
endmodule: converter