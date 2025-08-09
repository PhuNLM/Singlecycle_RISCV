module lsu(i_clk, i_reset_n, i_lsu_addr, i_st_data, i_lsu_wren, o_ld_data, o_io_ledr, o_io_ledg, o_io_lcd, i_io_sw, i_io_btn, o_io_hex0, o_io_hex1, o_io_hex2, o_io_hex3, o_io_hex4, o_io_hex5, o_io_hex6, o_io_hex7,
 addr_to_sram, sramdq, sramcen, sramwen, sramlbn, sramubn, sramoen);
input logic i_clk, i_reset_n;
input logic[31:0]i_lsu_addr;
input logic[31:0]i_st_data;
input logic[31:0]i_io_sw;
input logic[3:0]i_io_btn;
input logic i_lsu_wren;
output logic [31:0] o_ld_data, o_io_ledr, o_io_ledg, o_io_lcd;
output logic [6:0] o_io_hex0; //8 hex, moi hex 7 bit
output logic [6:0] o_io_hex1; //8 hex, moi hex 7 bit
output logic [6:0] o_io_hex2; //8 hex, moi hex 7 bit
output logic [6:0] o_io_hex3; //8 hex, moi hex 7 bit
output logic [6:0] o_io_hex4; //8 hex, moi hex 7 bit
output logic [6:0] o_io_hex5; //8 hex, moi hex 7 bit
output logic [6:0] o_io_hex6; //8 hex, moi hex 7 bit
output logic [6:0] o_io_hex7; //8 hex, moi hex 7 bit

output logic [17:0] addr_to_sram;
output wire [15:0] sramdq;

output logic sramcen;
output logic sramwen;
output logic sramlbn;
output logic sramubn;
output logic sramoen;

parameter [31:0] switch_addr = 32'h7800;
parameter [31:0] red_addr = 32'h7000;
parameter [31:0] green_addr = 32'h7010;
parameter [31:0] hex0_addr = 32'h7020;
parameter [31:0] hex4_addr = 32'h7024;
parameter [31:0] button_addr = 32'h7810;

logic [3:0][7:0] led_red;
logic [3:0][7:0] led_green;
logic [31:0] switch;
logic [3:0] button;
logic [3:0][6:0] hex0;
logic [3:0][6:0] hex4;
logic [7:0][6:0] o_io_hex_t;

logic [31:0] o_ld_data_io;
logic [31:0] o_ld_data_sram;


logic [3:0][6:0] hex0_conv;
logic [3:0][6:0] hex4_conv;

assign o_io_hex0 = o_io_hex_t[0];
assign o_io_hex1 = o_io_hex_t[1];
assign o_io_hex2 = o_io_hex_t[2];
assign o_io_hex3 = o_io_hex_t[3];
assign o_io_hex4 = o_io_hex_t[4];
assign o_io_hex5 = o_io_hex_t[5];
assign o_io_hex6 = o_io_hex_t[6];
assign o_io_hex7 = o_io_hex_t[7];

logic [17:0] sram_addr;

assign sram_addr = i_lsu_addr[31:14]; //2000 -> 3FFF

BCDto7Seg bcdconv(.in1(hex0[0]),
						.in2(hex0[1]),
						.in3(hex0[2]),
						.in4(hex0[3]),
						.out1(hex0_conv[0]),
						.out2(hex0_conv[1]),
						.out3(hex0_conv[2]),
						.out4(hex0_conv[3]));
BCDto7Seg bcdconv1(.in1(hex4[0]),
						.in2(hex4[1]),
						.in3(hex4[2]),
						.in4(hex4[3]),
						.out1(hex4_conv[0]),
						.out2(hex4_conv[1]),
						.out3(hex4_conv[2]),
						.out4(hex4_conv[3]));
						
sram_IS61WV25616_controller_32b_3lr sramcontroller(.i_ADDR(sram_addr),
                                                   .i_WDATA(i_st_data),
                                                   .i_BMASK(4'b1111),              //design doesnt implement lhu, lbu,....
                                                   .i_WREN(i_lsu_wren),
                                                   .i_RDEN(~i_lsu_wren),
                                                   .o_RDATA(o_ld_data_sram),
                                                   .o_ACK(),
                                                   .SRAM_ADDR(addr_to_sram),
                                                   .SRAM_DQ(sramdq),
                                                   .SRAM_CE_N(sramcen),
                                                   .SRAM_WE_N(sramwen),
                                                   .SRAM_LB_N(sramlbn),
                                                   .SRAM_UB_N(sramubn),
                                                   .SRAM_OE_N(sramoen),
                                                   .i_clk(i_clk),
                                                   .i_reset(i_reset_n));

logic [31:0] addr;
assign addr = {i_lsu_addr[31:2],2'b00};

always @(posedge i_clk) begin 
	o_io_ledr <= led_red & 32'h0001FFFF;    //17 red
	o_io_ledg <= led_green & 32'h000000FF;  //8 green 
	o_io_hex_t <= {hex4_conv, hex0_conv};
	switch <= i_io_sw;
	button <= i_io_btn;
end

always @(posedge i_clk or negedge i_reset_n) begin
	if (!i_reset_n) begin
		led_red <= 32'h0000;
		led_green <= 32'h0000;
		hex0 <= 32'h0000;
 		hex4 <= 32'h0000;
	end
	else begin
	if (i_lsu_wren) begin
		if (addr == red_addr) begin   //led_red
			led_red[0] <= i_st_data[7:0];
			led_red[1] <= i_st_data[15:8];
			led_red[2] <= i_st_data[23:16];
			led_red[3] <= i_st_data[31:24];
		end
		else if (addr == green_addr) begin
			led_green[0] <= i_st_data[7:0];
			led_green[1] <= i_st_data[15:8];
			led_green[2] <= i_st_data[23:16];
			led_green[3] <= i_st_data[31:24];
		end
		else if (addr == hex0_addr) begin
			hex0[0] <= i_st_data[6:0];
			hex0[1] <= i_st_data[14:8];
			hex0[2] <= i_st_data[22:16];
			hex0[3] <= i_st_data[30:24];
			end
		else if (addr == hex4_addr) begin
			hex4[0] <= i_st_data[6:0];
			hex4[1] <= i_st_data[14:8];
			hex4[2] <= i_st_data[22:16];
			hex4[3] <= i_st_data[30:24];end
		else begin
			led_red <= 32'h0000;
			led_green <= 32'h0000;
			hex0 <= 32'h0000;
			hex4 <= 32'h0000;
		end
	end
	end
end

	always @(addr) begin
		if (addr == red_addr) begin   //led_red
			o_ld_data = led_red;
		end
		else if (addr == green_addr) begin
			o_ld_data = led_green;
		end
		else if (addr == hex0_addr) begin
			o_ld_data = hex0;
			end
		else if (addr == hex4_addr) begin
			o_ld_data = hex4;
			end
		else if (addr == switch_addr) begin
			o_ld_data = switch; 
		end
		else if (addr == button_addr) begin
			o_ld_data = button;end
		else begin
			o_ld_data = o_ld_data_sram;
		end
	
	
end



endmodule

//SRAM CONTROLLER
module sram_IS61WV25616_controller_32b_3lr (
  input  logic [17:0]   i_ADDR   ,
  input  logic [31:0]   i_WDATA  ,
  input  logic [ 3:0]   i_BMASK  ,
  input  logic          i_WREN   ,
  input  logic          i_RDEN   ,
  output logic [31:0]   o_RDATA  ,
  output logic          o_ACK    ,

  output logic [17:0]   SRAM_ADDR,
  inout  wire  [15:0]   SRAM_DQ  ,
  output logic          SRAM_CE_N,
  output logic          SRAM_WE_N,
  output logic          SRAM_OE_N,
  output logic          SRAM_LB_N,
  output logic          SRAM_UB_N,

  input logic i_clk,
  input logic i_reset
);

  typedef enum logic [2:0] {
      StIdle
    , StWrite
    , StWriteAck
    , StRead0
    , StRead1
    , StReadAck
  } sram_state_e;

  sram_state_e sram_state_d;
  sram_state_e sram_state_q;

  logic [17:0] addr_d;
  logic [17:0] addr_q;
  logic [31:0] wdata_d;
  logic [31:0] wdata_q;
  logic [31:0] rdata_d;
  logic [31:0] rdata_q;
  logic [ 3:0] bmask_d;
  logic [ 3:0] bmask_q;

  logic [15:0] DIN;
  logic [15:0] DOUT;

  always_comb begin : proc_detect_state
    case (sram_state_q)
      StIdle, StWriteAck, StReadAck: begin
        if (i_WREN ~^ i_RDEN) begin
          sram_state_d = StIdle;
          addr_d       = addr_q;
          wdata_d      = wdata_q;
          rdata_d      = rdata_q;
          bmask_d      = bmask_q;
        end
        else begin
          sram_state_d = i_WREN ? StWrite : StRead0;
          addr_d       = i_ADDR & 18'h3FFFE;
          wdata_d      = i_WREN ? i_WDATA : wdata_q;
          rdata_d      = rdata_q;
          bmask_d      = i_BMASK;
        end
      end
      StWrite: begin
        sram_state_d = StWriteAck;
        addr_d       = addr_q | 18'h1;
        wdata_d      = wdata_q >> 16;
        rdata_d      = rdata_q;
        bmask_d      = bmask_q;
      end
      StRead0: begin
        sram_state_d = StRead1;
        addr_d       = addr_q | 18'h1;
        wdata_d      = wdata_q;
        rdata_d      = {rdata_q[31:16], DIN};
        bmask_d      = bmask_q;
      end
      StRead1: begin
        sram_state_d = StReadAck;
        addr_d       = addr_q;
        wdata_d      = wdata_q;
        rdata_d      = {DIN, rdata_q[15:0]};
        bmask_d      = bmask_q;
      end
      default: begin
        sram_state_d = StIdle;
        addr_d       = '0;
        wdata_d      = '0;
        rdata_d      = '0;
        bmask_d      = '0;
      end
    endcase
  end

  always_ff @(posedge i_clk) begin
    if (!i_reset) begin
      sram_state_q <= StIdle;
    end
    else begin
      sram_state_q <= sram_state_d;
    end
  end

  always_ff @(posedge i_clk) begin
    if (!i_reset) begin
      addr_q  <= '0;
      wdata_q <= '0;
      rdata_q <= '0;
      bmask_q <= 4'b0000;
    end
    else begin
      addr_q  <= addr_d;
      wdata_q <= wdata_d;
      rdata_q <= rdata_d;
      bmask_q <= bmask_d;
    end
  end

  always_comb begin : proc_output_to_sram
    SRAM_ADDR = addr_q;
    case (sram_state_q)
      StWrite: begin
        DOUT      = wdata_q[15:0];
        SRAM_WE_N = 1'b0;
        SRAM_OE_N = 1'b1;
        SRAM_CE_N = 1'b0;
        {SRAM_UB_N, SRAM_LB_N} = ~bmask_q[1:0];
      end
      StWriteAck: begin
        DOUT      = wdata_q[15:0];
        SRAM_WE_N = 1'b0;
        SRAM_OE_N = 1'b1;
        SRAM_CE_N = 1'b0;
        {SRAM_UB_N, SRAM_LB_N} = ~bmask_q[3:2];
      end
      StRead0: begin
        DOUT      = 'z;
        SRAM_WE_N = 1'b1;
        SRAM_OE_N = 1'b0;
        SRAM_CE_N = 1'b0;
        {SRAM_UB_N, SRAM_LB_N} = ~bmask_q[1:0];
      end
      StRead1: begin
        DOUT      = 'z;
        SRAM_WE_N = 1'b1;
        SRAM_OE_N = 1'b0;
        SRAM_CE_N = 1'b0;
        {SRAM_UB_N, SRAM_LB_N} = ~bmask_q[3:2];
      end
      StReadAck: begin
        DOUT      = 'z;
        SRAM_WE_N = 1'b1;
        SRAM_OE_N = 1'b1;
        SRAM_CE_N = 1'b1;
        {SRAM_UB_N, SRAM_LB_N} = 2'b11;
      end
      default: begin
        DOUT      = 'z;
        SRAM_WE_N = 1'b1;
        SRAM_OE_N = 1'b1;
        SRAM_CE_N = 1'b1;
        {SRAM_UB_N, SRAM_LB_N} = 2'b11;
      end
    endcase
  end

  assign  SRAM_DQ = DOUT;
  assign  DIN = SRAM_DQ;

  always_comb begin : proc_output_to_lsu
    o_RDATA = rdata_q;
    o_ACK  = (sram_state_q == StWriteAck) || (sram_state_q == StReadAck);
  end

endmodule : sram_IS61WV25616_controller_32b_3lr








