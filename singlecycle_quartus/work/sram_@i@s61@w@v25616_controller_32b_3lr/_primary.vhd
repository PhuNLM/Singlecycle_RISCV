library verilog;
use verilog.vl_types.all;
entity sram_IS61WV25616_controller_32b_3lr is
    generic(
        z               : vl_logic_vector(15 downto 0) := (HiZ, HiZ, HiZ, HiZ, HiZ, HiZ, HiZ, HiZ, HiZ, HiZ, HiZ, HiZ, HiZ, HiZ, HiZ, HiZ)
    );
    port(
        i_ADDR          : in     vl_logic_vector(17 downto 0);
        i_WDATA         : in     vl_logic_vector(31 downto 0);
        i_BMASK         : in     vl_logic_vector(3 downto 0);
        i_WREN          : in     vl_logic;
        i_RDEN          : in     vl_logic;
        o_RDATA         : out    vl_logic_vector(31 downto 0);
        o_ACK           : out    vl_logic;
        SRAM_ADDR       : out    vl_logic_vector(17 downto 0);
        SRAM_DQ         : inout  vl_logic_vector(15 downto 0);
        SRAM_CE_N       : out    vl_logic;
        SRAM_WE_N       : out    vl_logic;
        SRAM_LB_N       : out    vl_logic;
        SRAM_UB_N       : out    vl_logic;
        SRAM_OE_N       : in     vl_logic;
        i_clk           : in     vl_logic;
        i_reset         : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of z : constant is 2;
end sram_IS61WV25616_controller_32b_3lr;
