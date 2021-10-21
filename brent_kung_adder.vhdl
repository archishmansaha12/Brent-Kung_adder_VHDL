library ieee; 
use ieee.std_logic_1164.all;

entity brent_kung_adder is
    port (A, B : in std_logic_vector(31 downto 0); C0: in std_logic ; Sum : out std_logic_vector(31 downto 0); Carry : out std_logic );
end entity brent_kung_adder;


architecture simple of brent_kung_adder is
    component Level_1 port (A, B : in std_logic_vector(31 downto 0) ; P1, G1 : out std_logic_vector(31 downto 0) );
    end component;
    component Level_2 port (P_1, G_1 : in std_logic_vector(31 downto 0) ; P2, G2 : out std_logic_vector(15 downto 0) );
    end component;
    component Level_3 port (P_2, G_2 : in std_logic_vector(15 downto 0) ; P3, G3 : out std_logic_vector(7 downto 0) );
    end component;
    component Level_4 port (P_3, G_3 : in std_logic_vector(7 downto 0) ; P4, G4 : out std_logic_vector(3 downto 0) );
    end component;
    component Level_5 port (P_4, G_4 : in std_logic_vector(3 downto 0) ; P5, G5 : out std_logic_vector(1 downto 0) );
    end component;
    component Level_6 port (P_5, G_5 : in std_logic_vector(1 downto 0) ; P6, G6 : out std_logic );
    end component;
    component a_and_bc port(data_a, data_b, data_c: in std_logic; data_out : out std_logic);
    end component;
    component xor2 port(data_in_0, data_in_1: in std_logic; data_out: out std_logic);
    end component;
    
   -- carry generators
    signal Cout : std_logic_vector(31 downto 1);
    signal p_level1, g_level1 : std_logic_vector(31 downto 0);
    signal p_level2, g_level2 : std_logic_vector(15 downto 0);
    signal p_level3, g_level3 : std_logic_vector(7 downto 0);
    signal p_level4, g_level4 : std_logic_vector(3 downto 0);
    signal p_level5, g_level5 : std_logic_vector(1 downto 0);
    signal p_level6, g_level6 : std_logic;

begin

   -- calculating generation and propagation terms
    l1: Level_1 port map ( A => A , B => B , P1 => p_level1 , G1 => g_level1 );
    l2: Level_2 port map ( P_1 => p_level1 , G_1 => g_level1 , P2 => p_level2 , G2 => g_level2 );
    l3: Level_3 port map ( P_2 => p_level2 , G_2 => g_level2 , P3 => p_level3 , G3 => g_level3 );
    l4: Level_4 port map ( P_3 => p_level3 , G_3 => g_level3 , P4 => p_level4 , G4 => g_level4 );
    l5: Level_5 port map ( P_4 => p_level4 , G_4 => g_level4 , P5 => p_level5 , G5 => g_level5 );
    l6: Level_6 port map ( P_5 => p_level5 , G_5 => g_level5 , P6 => p_level6 , G6 => g_level6 );

   -- calculating carry bits

   -- level1 
    c1: a_and_bc port map (data_a=>g_level1(0) , data_b=>p_level1(0) , data_c=>C0 , data_out=>Cout(1));
    c2: a_and_bc port map (data_a=>g_level2(0) , data_b=>p_level2(0) , data_c=>C0 , data_out=>Cout(2));
    c4: a_and_bc port map (data_a=>g_level3(0) , data_b=>p_level3(0) , data_c=>C0 , data_out=>Cout(4));
    c8: a_and_bc port map (data_a=>g_level4(0) , data_b=>p_level4(0) , data_c=>C0 , data_out=>Cout(8));
    c16: a_and_bc port map (data_a=>g_level5(0) , data_b=>p_level5(0) , data_c=>C0 , data_out=>Cout(16));
    c32: a_and_bc port map (data_a=>g_level6 , data_b=>p_level6 , data_c=>C0 , data_out=>Carry);

   -- level2 
    c3: a_and_bc port map (data_a=>g_level1(2) , data_b=>p_level1(2) , data_c=>Cout(2) , data_out=>Cout(3));
    c5: a_and_bc port map (data_a=>g_level1(4) , data_b=>p_level1(4) , data_c=>Cout(4) , data_out=>Cout(5));
    c6: a_and_bc port map (data_a=>g_level2(2) , data_b=>p_level2(2) , data_c=>Cout(4) , data_out=>Cout(6));
    c9: a_and_bc port map (data_a=>g_level1(8) , data_b=>p_level1(8) , data_c=>Cout(8) , data_out=>Cout(9));
    c10: a_and_bc port map (data_a=>g_level2(4) , data_b=>p_level2(4) , data_c=>Cout(8) , data_out=>Cout(10));
    c12: a_and_bc port map (data_a=>g_level3(2) , data_b=>p_level3(2) , data_c=>Cout(8) , data_out=>Cout(12));
    c17: a_and_bc port map (data_a=>g_level1(16) , data_b=>p_level1(16) , data_c=>Cout(16) , data_out=>Cout(17));
    c18: a_and_bc port map (data_a=>g_level2(8) , data_b=>p_level2(8) , data_c=>Cout(16) , data_out=>Cout(18));
    c20: a_and_bc port map (data_a=>g_level3(4) , data_b=>p_level3(4) , data_c=>Cout(16) , data_out=>Cout(20));
    c24: a_and_bc port map (data_a=>g_level4(2) , data_b=>p_level4(2) , data_c=>Cout(16) , data_out=>Cout(24));
    
   -- level3 
    c7: a_and_bc port map (data_a=>g_level1(6) , data_b=>p_level1(6) , data_c=>Cout(6) , data_out=>Cout(7));
    c11: a_and_bc port map (data_a=>g_level1(10) , data_b=>p_level1(10) , data_c=>Cout(10) , data_out=>Cout(11));
    c13: a_and_bc port map (data_a=>g_level1(12) , data_b=>p_level1(12) , data_c=>Cout(12) , data_out=>Cout(13));
    c14: a_and_bc port map (data_a=>g_level2(6) , data_b=>p_level2(6) , data_c=>Cout(12) , data_out=>Cout(14));
    c19: a_and_bc port map (data_a=>g_level1(18) , data_b=>p_level1(18) , data_c=>Cout(18) , data_out=>Cout(19));
    c21: a_and_bc port map (data_a=>g_level1(20) , data_b=>p_level1(20) , data_c=>Cout(20) , data_out=>Cout(21));
    c22: a_and_bc port map (data_a=>g_level2(10) , data_b=>p_level2(10) , data_c=>Cout(20) , data_out=>Cout(22));
    c25: a_and_bc port map (data_a=>g_level1(24) , data_b=>p_level1(24) , data_c=>Cout(24) , data_out=>Cout(25));
    c26: a_and_bc port map (data_a=>g_level2(12) , data_b=>p_level2(12) , data_c=>Cout(24) , data_out=>Cout(26));
    c28: a_and_bc port map (data_a=>g_level3(6) , data_b=>p_level3(6) , data_c=>Cout(24) , data_out=>Cout(28));

   -- level4 
    c15: a_and_bc port map (data_a=>g_level1(14) , data_b=>p_level1(14) , data_c=>Cout(14) , data_out=>Cout(15));
    c23: a_and_bc port map (data_a=>g_level1(22) , data_b=>p_level1(22) , data_c=>Cout(22) , data_out=>Cout(23));
    c27: a_and_bc port map (data_a=>g_level1(26) , data_b=>p_level1(26) , data_c=>Cout(26) , data_out=>Cout(27));
    c29: a_and_bc port map (data_a=>g_level1(28) , data_b=>p_level1(28) , data_c=>Cout(28) , data_out=>Cout(29));
    c30: a_and_bc port map (data_a=>g_level2(14) , data_b=>p_level2(14) , data_c=>Cout(28) , data_out=>Cout(30));

   -- level5
    c31: a_and_bc port map (data_a=>g_level1(30) , data_b=>p_level1(30) , data_c=>Cout(30) , data_out=>Cout(31));     


   -- generating sum
    s0: xor2 port map (data_in_0=>p_level1(0) , data_in_1=>C0 , data_out=>Sum(0));
    s1: xor2 port map (data_in_0=>p_level1(1) , data_in_1=>Cout(1) , data_out=>Sum(1));
    s2: xor2 port map (data_in_0=>p_level1(2) , data_in_1=>Cout(2) , data_out=>Sum(2));
    s3: xor2 port map (data_in_0=>p_level1(3) , data_in_1=>Cout(3) , data_out=>Sum(3));
    s4: xor2 port map (data_in_0=>p_level1(4) , data_in_1=>Cout(4) , data_out=>Sum(4));
    s5: xor2 port map (data_in_0=>p_level1(5) , data_in_1=>Cout(5) , data_out=>Sum(5));
    s6: xor2 port map (data_in_0=>p_level1(6) , data_in_1=>Cout(6) , data_out=>Sum(6));
    s7: xor2 port map (data_in_0=>p_level1(7) , data_in_1=>Cout(7) , data_out=>Sum(7));
    s8: xor2 port map (data_in_0=>p_level1(8) , data_in_1=>Cout(8) , data_out=>Sum(8));
    s9: xor2 port map (data_in_0=>p_level1(9) , data_in_1=>Cout(9) , data_out=>Sum(9));
    s10: xor2 port map (data_in_0=>p_level1(10) , data_in_1=>Cout(10) , data_out=>Sum(10));
    s11: xor2 port map (data_in_0=>p_level1(11) , data_in_1=>Cout(11) , data_out=>Sum(11));
    s12: xor2 port map (data_in_0=>p_level1(12) , data_in_1=>Cout(12) , data_out=>Sum(12));
    s13: xor2 port map (data_in_0=>p_level1(13) , data_in_1=>Cout(13) , data_out=>Sum(13));
    s14: xor2 port map (data_in_0=>p_level1(14) , data_in_1=>Cout(14) , data_out=>Sum(14));
    s15: xor2 port map (data_in_0=>p_level1(15) , data_in_1=>Cout(15) , data_out=>Sum(15));
    s16: xor2 port map (data_in_0=>p_level1(16) , data_in_1=>Cout(16) , data_out=>Sum(16));
    s17: xor2 port map (data_in_0=>p_level1(17) , data_in_1=>Cout(17) , data_out=>Sum(17));
    s18: xor2 port map (data_in_0=>p_level1(18) , data_in_1=>Cout(18) , data_out=>Sum(18));
    s19: xor2 port map (data_in_0=>p_level1(19) , data_in_1=>Cout(19) , data_out=>Sum(19));
    s20: xor2 port map (data_in_0=>p_level1(20) , data_in_1=>Cout(20) , data_out=>Sum(20));
    s21: xor2 port map (data_in_0=>p_level1(21) , data_in_1=>Cout(21) , data_out=>Sum(21));
    s22: xor2 port map (data_in_0=>p_level1(22) , data_in_1=>Cout(22) , data_out=>Sum(22));
    s23: xor2 port map (data_in_0=>p_level1(23) , data_in_1=>Cout(23) , data_out=>Sum(23));
    s24: xor2 port map (data_in_0=>p_level1(24) , data_in_1=>Cout(24) , data_out=>Sum(24));
    s25: xor2 port map (data_in_0=>p_level1(25) , data_in_1=>Cout(25) , data_out=>Sum(25));
    s26: xor2 port map (data_in_0=>p_level1(26) , data_in_1=>Cout(26) , data_out=>Sum(26));
    s27: xor2 port map (data_in_0=>p_level1(27) , data_in_1=>Cout(27) , data_out=>Sum(27));
    s28: xor2 port map (data_in_0=>p_level1(28) , data_in_1=>Cout(28) , data_out=>Sum(28));
    s29: xor2 port map (data_in_0=>p_level1(29) , data_in_1=>Cout(29) , data_out=>Sum(29));
    s30: xor2 port map (data_in_0=>p_level1(30) , data_in_1=>Cout(30) , data_out=>Sum(30));
    s31: xor2 port map (data_in_0=>p_level1(31) , data_in_1=>Cout(31) , data_out=>Sum(31));
    
end simple;