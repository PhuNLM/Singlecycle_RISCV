library verilog;
use verilog.vl_types.all;
entity converter is
    generic(
        A               : integer := 10;
        B               : integer := 11;
        C               : integer := 12;
        D               : integer := 13;
        E               : integer := 14;
        F               : integer := 15
    );
    port(
        \in\            : in     vl_logic_vector(6 downto 0);
        \out\           : out    vl_logic_vector(6 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of A : constant is 1;
    attribute mti_svvh_generic_type of B : constant is 1;
    attribute mti_svvh_generic_type of C : constant is 1;
    attribute mti_svvh_generic_type of D : constant is 1;
    attribute mti_svvh_generic_type of E : constant is 1;
    attribute mti_svvh_generic_type of F : constant is 1;
end converter;
