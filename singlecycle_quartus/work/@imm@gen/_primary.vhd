library verilog;
use verilog.vl_types.all;
entity ImmGen is
    generic(
        I               : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        S               : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        B               : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        Jal             : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        Jalr            : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        U               : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0)
    );
    port(
        inst_in         : in     vl_logic_vector(31 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        imm_out         : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of I : constant is 1;
    attribute mti_svvh_generic_type of S : constant is 1;
    attribute mti_svvh_generic_type of B : constant is 1;
    attribute mti_svvh_generic_type of Jal : constant is 1;
    attribute mti_svvh_generic_type of Jalr : constant is 1;
    attribute mti_svvh_generic_type of U : constant is 1;
end ImmGen;
