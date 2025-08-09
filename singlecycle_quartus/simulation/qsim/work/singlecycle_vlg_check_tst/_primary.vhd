library verilog;
use verilog.vl_types.all;
entity singlecycle_vlg_check_tst is
    port(
        addr_to_sram    : in     vl_logic_vector(17 downto 0);
        o_insn_vld      : in     vl_logic;
        o_io_hex0       : in     vl_logic_vector(6 downto 0);
        o_io_hex1       : in     vl_logic_vector(6 downto 0);
        o_io_hex2       : in     vl_logic_vector(6 downto 0);
        o_io_hex3       : in     vl_logic_vector(6 downto 0);
        o_io_hex4       : in     vl_logic_vector(6 downto 0);
        o_io_hex5       : in     vl_logic_vector(6 downto 0);
        o_io_hex6       : in     vl_logic_vector(6 downto 0);
        o_io_hex7       : in     vl_logic_vector(6 downto 0);
        o_io_lcd        : in     vl_logic_vector(31 downto 0);
        o_io_ledg       : in     vl_logic_vector(31 downto 0);
        o_io_ledr       : in     vl_logic_vector(31 downto 0);
        o_pc_debug      : in     vl_logic_vector(31 downto 0);
        sramcen         : in     vl_logic;
        sramdq          : in     vl_logic_vector(15 downto 0);
        sramlbn         : in     vl_logic;
        sramoen         : in     vl_logic;
        sramubn         : in     vl_logic;
        sramwen         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end singlecycle_vlg_check_tst;
