library verilog;
use verilog.vl_types.all;
entity Muxx is
    port(
        a0              : in     vl_logic_vector(31 downto 0);
        a1              : in     vl_logic_vector(31 downto 0);
        a2              : in     vl_logic_vector(31 downto 0);
        a3              : in     vl_logic_vector(31 downto 0);
        a4              : in     vl_logic_vector(31 downto 0);
        a5              : in     vl_logic_vector(31 downto 0);
        a6              : in     vl_logic_vector(31 downto 0);
        a7              : in     vl_logic_vector(31 downto 0);
        a8              : in     vl_logic_vector(31 downto 0);
        a9              : in     vl_logic_vector(31 downto 0);
        sel             : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(32 downto 0)
    );
end Muxx;
