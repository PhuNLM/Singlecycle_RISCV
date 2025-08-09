module imem(i_clk, i_rst, addr_in, inst_out);
input i_clk, i_rst;
input logic [31:0] addr_in;
output logic [31:0] inst_out;

reg [31:0] mem [2047:0];


initial begin
  $readmemh("../02_test/dump/mem.dump", mem, 0, 2047);
end

assign inst_out = mem[addr_in[31:2]];
endmodule
