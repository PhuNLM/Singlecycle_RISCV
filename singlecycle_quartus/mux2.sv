module mux2(x, y, sel, out);
input logic [31:0] x, y;
input logic sel;
output logic [31:0] out;

assign out = (sel) ? y : x;

endmodule 