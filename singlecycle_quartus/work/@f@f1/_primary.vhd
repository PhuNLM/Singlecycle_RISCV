library verilog;
use verilog.vl_types.all;
entity FF1 is
    port(
        i_clk           : in     vl_logic;
        i_rst           : in     vl_logic;
        D               : in     vl_logic;
        Q               : out    vl_logic
    );
end FF1;
