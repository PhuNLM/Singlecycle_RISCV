library verilog;
use verilog.vl_types.all;
entity imem is
    port(
        i_clk           : in     vl_logic;
        i_rst           : in     vl_logic;
        addr_in         : in     vl_logic_vector(31 downto 0);
        inst_out        : out    vl_logic_vector(31 downto 0)
    );
end imem;
