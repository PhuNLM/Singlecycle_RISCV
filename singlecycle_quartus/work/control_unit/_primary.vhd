library verilog;
use verilog.vl_types.all;
entity control_unit is
    port(
        imm_sel         : out    vl_logic_vector(2 downto 0);
        inst_in         : in     vl_logic_vector(31 downto 0);
        pc_sel          : out    vl_logic;
        rd_wren         : out    vl_logic;
        inst_vld        : out    vl_logic;
        br_un           : out    vl_logic;
        br_less         : in     vl_logic;
        br_equal        : in     vl_logic;
        opa_sel         : out    vl_logic;
        opb_sel         : out    vl_logic;
        alu_op          : out    vl_logic_vector(3 downto 0);
        mem_wren        : out    vl_logic;
        wb_sel          : out    vl_logic_vector(1 downto 0)
    );
end control_unit;
