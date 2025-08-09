

module tbench;

// Clock and reset generator
  logic i_clk;
  logic i_reset_n;


// Wave dumping
  initial begin : proc_dump_wave
    $dumpfile("wave.vcd");
    $dumpvars(0, tbench);
  end

  logic [31:0]       i_io_sw  ;
  logic [31:0]       o_io_lcd ;
  logic [31:0]       o_io_ledg;
  logic [31:0]       o_io_ledr;
  logic [ 6:0]       o_io_hex0;
  logic [ 6:0]       o_io_hex1;
  logic [ 6:0]       o_io_hex2;
  logic [ 6:0]       o_io_hex3;
  logic [ 6:0]       o_io_hex4;
  logic [ 6:0]       o_io_hex5;
  logic [ 6:0]       o_io_hex6;
  logic [ 6:0]       o_io_hex7;

  logic [31:0]       o_pc_debug;
  logic              o_insn_vld;

  initial begin
    i_clk = 1'b0;
    i_rst_n =  1'b0;
  end
  always begin
    #5;
    i_clk = ~i_clk;
    #25
    i_reset_n = 1'b1
  end

  pipelined pipelined(
    .i_io_sw   ,
    .o_io_lcd  ,
    .o_io_ledg ,
    .o_io_ledr ,
    .o_io_hex0 ,
    .o_io_hex1 ,
    .o_io_hex2 ,
    .o_io_hex3 ,
    .o_io_hex4 ,
    .o_io_hex5 ,
    .o_io_hex6 ,
    .o_io_hex7 ,
    .o_pc_debug,
    .o_insn_vld,
    .i_clk,
    .i_rst_n(i_reset_n)
  );


endmodule : tbench
