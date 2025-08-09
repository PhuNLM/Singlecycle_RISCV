library verilog;
use verilog.vl_types.all;
entity dmem is
    port(
        i_clk           : in     vl_logic;
        i_rst           : in     vl_logic;
        alu_data        : in     vl_logic_vector(31 downto 0);
        rs2_data        : in     vl_logic_vector(31 downto 0);
        mem_wren        : in     vl_logic_vector(1 downto 0);
        mem_out         : out    vl_logic_vector(31 downto 0)
    );
end dmem;
