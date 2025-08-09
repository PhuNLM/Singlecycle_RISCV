library verilog;
use verilog.vl_types.all;
entity FS is
    port(
        x               : in     vl_logic_vector(31 downto 0);
        y               : in     vl_logic_vector(31 downto 0);
        s               : out    vl_logic;
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end FS;
