library verilog;
use verilog.vl_types.all;
entity BCDto7Seg is
    port(
        in1             : in     vl_logic_vector(6 downto 0);
        in2             : in     vl_logic_vector(6 downto 0);
        in3             : in     vl_logic_vector(6 downto 0);
        in4             : in     vl_logic_vector(6 downto 0);
        out1            : out    vl_logic_vector(6 downto 0);
        out2            : out    vl_logic_vector(6 downto 0);
        out3            : out    vl_logic_vector(6 downto 0);
        out4            : out    vl_logic_vector(6 downto 0)
    );
end BCDto7Seg;
