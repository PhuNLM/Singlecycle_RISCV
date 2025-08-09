library verilog;
use verilog.vl_types.all;
entity FF32 is
    port(
        i_clk           : in     vl_logic;
        i_rst           : in     vl_logic;
        D               : in     vl_logic_vector(31 downto 0);
        Q               : out    vl_logic_vector(31 downto 0)
    );
end FF32;
