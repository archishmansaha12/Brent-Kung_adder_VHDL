library ieee; 
use ieee.std_logic_1164.all;

entity Level_1 is
    port (A, B : in std_logic_vector(31 downto 0) ; P1, G1 : out std_logic_vector(31 downto 0) );
end entity Level_1;

architecture simple of Level_1 is
    component a_and_b port(data_in_0, data_in_1: in std_logic; data_out: out std_logic);
    end component;
    component xor2 port(data_in_0, data_in_1: in std_logic; data_out: out std_logic);
    end component;
    
begin

    g0_1 : a_and_b port map ( data_in_0 => A(0) , data_in_1 => B(0) , data_out => G1(0) );
    p0_1 : xor2 port map ( data_in_0 => A(0) , data_in_1 => B(0) , data_out => P1(0) );

    g1_1 : a_and_b port map ( data_in_0 => A(1) , data_in_1 => B(1) , data_out => G1(1) );
    p1_1 : xor2 port map ( data_in_0 => A(1) , data_in_1 => B(1) , data_out => P1(1) );

    g2_1 : a_and_b port map ( data_in_0 => A(2) , data_in_1 => B(2) , data_out => G1(2) );
    p2_1 : xor2 port map ( data_in_0 => A(2) , data_in_1 => B(2) , data_out => P1(2) );

    g3_1 : a_and_b port map ( data_in_0 => A(3) , data_in_1 => B(3) , data_out => G1(3) );
    p3_1 : xor2 port map ( data_in_0 => A(3) , data_in_1 => B(3) , data_out => P1(3) );

    g4_1 : a_and_b port map ( data_in_0 => A(4) , data_in_1 => B(4) , data_out => G1(4) );
    p4_1 : xor2 port map ( data_in_0 => A(4) , data_in_1 => B(4) , data_out => P1(4) );

    g5_1 : a_and_b port map ( data_in_0 => A(5) , data_in_1 => B(5) , data_out => G1(5) );
    p5_1 : xor2 port map ( data_in_0 => A(5) , data_in_1 => B(5) , data_out => P1(5) );
    
    g6_1 : a_and_b port map ( data_in_0 => A(6) , data_in_1 => B(6) , data_out => G1(6) );
    p6_1 : xor2 port map ( data_in_0 => A(6) , data_in_1 => B(6) , data_out => P1(6) );
    
    g7_1 : a_and_b port map ( data_in_0 => A(7) , data_in_1 => B(7) , data_out => G1(7) );
    p7_1 : xor2 port map ( data_in_0 => A(7) , data_in_1 => B(7) , data_out => P1(7) );
    
    g8_1 : a_and_b port map ( data_in_0 => A(8) , data_in_1 => B(8) , data_out => G1(8) );
    p8_1 : xor2 port map ( data_in_0 => A(8) , data_in_1 => B(8) , data_out => P1(8) );
    
    g9_1 : a_and_b port map ( data_in_0 => A(9) , data_in_1 => B(9) , data_out => G1(9) );
    p9_1 : xor2 port map ( data_in_0 => A(9) , data_in_1 => B(9) , data_out => P1(9) );
    
    g10_1 : a_and_b port map ( data_in_0 => A(10) , data_in_1 => B(10) , data_out => G1(10) );
    p10_1 : xor2 port map ( data_in_0 => A(10) , data_in_1 => B(10) , data_out => P1(10) );
    
    g11_1 : a_and_b port map ( data_in_0 => A(11) , data_in_1 => B(11) , data_out => G1(11) );
    p11_1 : xor2 port map ( data_in_0 => A(11) , data_in_1 => B(11) , data_out => P1(11) );
    
    g12_1 : a_and_b port map ( data_in_0 => A(12) , data_in_1 => B(12) , data_out => G1(12) );
    p12_1 : xor2 port map ( data_in_0 => A(12) , data_in_1 => B(12) , data_out => P1(12) );
    
    g13_1 : a_and_b port map ( data_in_0 => A(13) , data_in_1 => B(13) , data_out => G1(13) );
    p13_1 : xor2 port map ( data_in_0 => A(13) , data_in_1 => B(13) , data_out => P1(13) );
    
    g14_1 : a_and_b port map ( data_in_0 => A(14) , data_in_1 => B(14) , data_out => G1(14) );
    p14_1 : xor2 port map ( data_in_0 => A(14) , data_in_1 => B(14) , data_out => P1(14) );
    
    g15_1 : a_and_b port map ( data_in_0 => A(15) , data_in_1 => B(15) , data_out => G1(15) );
    p15_1 : xor2 port map ( data_in_0 => A(15) , data_in_1 => B(15) , data_out => P1(15) );
    
    g16_1 : a_and_b port map ( data_in_0 => A(16) , data_in_1 => B(16) , data_out => G1(16) );
    p16_1 : xor2 port map ( data_in_0 => A(16) , data_in_1 => B(16) , data_out => P1(16) );

    g17_1 : a_and_b port map ( data_in_0 => A(17) , data_in_1 => B(17) , data_out => G1(17) );
    p17_1 : xor2 port map ( data_in_0 => A(17) , data_in_1 => B(17) , data_out => P1(17) );

    g18_1 : a_and_b port map ( data_in_0 => A(18) , data_in_1 => B(18) , data_out => G1(18) );
    p18_1 : xor2 port map ( data_in_0 => A(18) , data_in_1 => B(18) , data_out => P1(18) );

    g19_1 : a_and_b port map ( data_in_0 => A(19) , data_in_1 => B(19) , data_out => G1(19) );
    p19_1 : xor2 port map ( data_in_0 => A(19) , data_in_1 => B(19) , data_out => P1(19) );

    g20_1 : a_and_b port map ( data_in_0 => A(20) , data_in_1 => B(20) , data_out => G1(20) );
    p20_1 : xor2 port map ( data_in_0 => A(20) , data_in_1 => B(20) , data_out => P1(20) );

    g21_1 : a_and_b port map ( data_in_0 => A(21) , data_in_1 => B(21) , data_out => G1(21) );
    p21_1 : xor2 port map ( data_in_0 => A(21) , data_in_1 => B(21) , data_out => P1(21) );
    
    g22_1 : a_and_b port map ( data_in_0 => A(22) , data_in_1 => B(22) , data_out => G1(22) );
    p22_1 : xor2 port map ( data_in_0 => A(22) , data_in_1 => B(22) , data_out => P1(22) );
    
    g23_1 : a_and_b port map ( data_in_0 => A(23) , data_in_1 => B(23) , data_out => G1(23) );
    p23_1 : xor2 port map ( data_in_0 => A(23) , data_in_1 => B(23) , data_out => P1(23) );
    
    g24_1 : a_and_b port map ( data_in_0 => A(24) , data_in_1 => B(24) , data_out => G1(24) );
    p24_1 : xor2 port map ( data_in_0 => A(24) , data_in_1 => B(24) , data_out => P1(24) );
    
    g25_1 : a_and_b port map ( data_in_0 => A(25) , data_in_1 => B(25) , data_out => G1(25) );
    p25_1 : xor2 port map ( data_in_0 => A(25) , data_in_1 => B(25) , data_out => P1(25) );
    
    g26_1 : a_and_b port map ( data_in_0 => A(26) , data_in_1 => B(26) , data_out => G1(26) );
    p26_1 : xor2 port map ( data_in_0 => A(26) , data_in_1 => B(26) , data_out => P1(26) );
    
    g27_1 : a_and_b port map ( data_in_0 => A(27) , data_in_1 => B(27) , data_out => G1(27) );
    p27_1 : xor2 port map ( data_in_0 => A(27) , data_in_1 => B(27) , data_out => P1(27) );
    
    g28_1 : a_and_b port map ( data_in_0 => A(28) , data_in_1 => B(28) , data_out => G1(28) );
    p28_1 : xor2 port map ( data_in_0 => A(28) , data_in_1 => B(28) , data_out => P1(28) );
    
    g29_1 : a_and_b port map ( data_in_0 => A(29) , data_in_1 => B(29) , data_out => G1(29) );
    p29_1 : xor2 port map ( data_in_0 => A(29) , data_in_1 => B(29) , data_out => P1(29) );
    
    g30_1 : a_and_b port map ( data_in_0 => A(30) , data_in_1 => B(30) , data_out => G1(30) );
    p30_1 : xor2 port map ( data_in_0 => A(30) , data_in_1 => B(30) , data_out => P1(30) );
    
    g31_1 : a_and_b port map ( data_in_0 => A(31) , data_in_1 => B(31) , data_out => G1(31) );
    p31_1 : xor2 port map ( data_in_0 => A(31) , data_in_1 => B(31) , data_out => P1(31) );
    
end architecture simple;
-----------------------------------------------

library ieee; 
use ieee.std_logic_1164.all;

entity Level_2 is
    port (P_1, G_1 : in std_logic_vector(31 downto 0) ; P2, G2 : out std_logic_vector(15 downto 0) );
end entity Level_2;

architecture simple of Level_2 is
    component a_and_b port(data_in_0, data_in_1: in std_logic; data_out: out std_logic);
    end component;
    component a_and_bc port(data_a, data_b, data_c: in std_logic; data_out : out std_logic);
    end component;

begin

    g1_0_2 : a_and_bc port map ( data_a => G_1(1) , data_b => P_1(1) , data_c => G_1(0) , data_out => G2(0) );
    p1_0_2 : a_and_b port map ( data_in_0 => P_1(1) , data_in_1 => P_1(0) , data_out => P2(0) );

    g3_2_2 : a_and_bc port map ( data_a => G_1(3) , data_b => P_1(3) , data_c => G_1(2) , data_out => G2(1) );
    p3_2_2 : a_and_b port map ( data_in_0 => P_1(3) , data_in_1 => P_1(2) , data_out => P2(1) );

    g5_4_2 : a_and_bc port map ( data_a => G_1(5) , data_b => P_1(5) , data_c => G_1(4) , data_out => G2(2) );
    p5_4_2 : a_and_b port map ( data_in_0 => P_1(5) , data_in_1 => P_1(4) , data_out => P2(2) );

    g7_6_2 : a_and_bc port map ( data_a => G_1(7) , data_b => P_1(7) , data_c => G_1(6) , data_out => G2(3) );
    p7_6_2 : a_and_b port map ( data_in_0 => P_1(7) , data_in_1 => P_1(6) , data_out => P2(3) );

    g9_8_2 : a_and_bc port map ( data_a => G_1(9) , data_b => P_1(9) , data_c => G_1(8) , data_out => G2(4) );
    p9_8_2 : a_and_b port map ( data_in_0 => P_1(9) , data_in_1 => P_1(8) , data_out => P2(4) );

    g11_10_2 : a_and_bc port map ( data_a => G_1(11) , data_b => P_1(11) , data_c => G_1(10) , data_out => G2(5) );
    p11_10_2 : a_and_b port map ( data_in_0 => P_1(11) , data_in_1 => P_1(10) , data_out => P2(5) );

    g13_12_2 : a_and_bc port map ( data_a => G_1(13) , data_b => P_1(13) , data_c => G_1(12) , data_out => G2(6) );
    p13_12_2 : a_and_b port map ( data_in_0 => P_1(13) , data_in_1 => P_1(12) , data_out => P2(6) );

    g15_14_2 : a_and_bc port map ( data_a => G_1(15) , data_b => P_1(15) , data_c => G_1(14) , data_out => G2(7) );
    p15_14_2 : a_and_b port map ( data_in_0 => P_1(15) , data_in_1 => P_1(14) , data_out => P2(7) );

    g17_16_2 : a_and_bc port map ( data_a => G_1(17) , data_b => P_1(17) , data_c => G_1(16) , data_out => G2(8) );
    p17_16_2 : a_and_b port map ( data_in_0 => P_1(17) , data_in_1 => P_1(16) , data_out => P2(8) );

    g19_18_2 : a_and_bc port map ( data_a => G_1(19) , data_b => P_1(19) , data_c => G_1(18) , data_out => G2(9) );
    p19_18_2 : a_and_b port map ( data_in_0 => P_1(19) , data_in_1 => P_1(18) , data_out => P2(9) );

    g21_20_2 : a_and_bc port map ( data_a => G_1(21) , data_b => P_1(21) , data_c => G_1(20) , data_out => G2(10) );
    p21_20_2 : a_and_b port map ( data_in_0 => P_1(21) , data_in_1 => P_1(20) , data_out => P2(10) );

    g23_22_2 : a_and_bc port map ( data_a => G_1(23) , data_b => P_1(23) , data_c => G_1(22) , data_out => G2(11) );
    p23_22_2 : a_and_b port map ( data_in_0 => P_1(23) , data_in_1 => P_1(22) , data_out => P2(11) );

    g25_24_2 : a_and_bc port map ( data_a => G_1(25) , data_b => P_1(25) , data_c => G_1(24) , data_out => G2(12) );
    p25_24_2 : a_and_b port map ( data_in_0 => P_1(25) , data_in_1 => P_1(24) , data_out => P2(12) );

    g27_26_2 : a_and_bc port map ( data_a => G_1(27) , data_b => P_1(27) , data_c => G_1(26) , data_out => G2(13) );
    p27_26_2 : a_and_b port map ( data_in_0 => P_1(27) , data_in_1 => P_1(26) , data_out => P2(13) );

    g29_28_2 : a_and_bc port map ( data_a => G_1(29) , data_b => P_1(29) , data_c => G_1(28) , data_out => G2(14) );
    p29_28_2 : a_and_b port map ( data_in_0 => P_1(29) , data_in_1 => P_1(28) , data_out => P2(14) );

    g31_30_2 : a_and_bc port map ( data_a => G_1(31) , data_b => P_1(31) , data_c => G_1(30) , data_out => G2(15) );
    p31_30_2 : a_and_b port map ( data_in_0 => P_1(31) , data_in_1 => P_1(30) , data_out => P2(15) );

end architecture simple;

-----------------------------------------------

library ieee; 
use ieee.std_logic_1164.all;

entity Level_3 is
    port (P_2, G_2 : in std_logic_vector(15 downto 0) ; P3, G3 : out std_logic_vector(7 downto 0) );
end entity Level_3;

architecture simple of Level_3 is
    component a_and_b port(data_in_0, data_in_1: in std_logic; data_out: out std_logic);
    end component;
    component a_and_bc port(data_a, data_b, data_c: in std_logic; data_out : out std_logic);
    end component;

begin
    
    g3_0_3 : a_and_bc port map ( data_a => G_2(1) , data_b => P_2(1) , data_c => G_2(0) , data_out => G3(0) );
    p3_0_3 : a_and_b port map ( data_in_0 => P_2(1) , data_in_1 => P_2(0) , data_out => P3(0) );

    g7_4_3 : a_and_bc port map ( data_a => G_2(3) , data_b => P_2(3) , data_c => G_2(2) , data_out => G3(1) );
    p7_4_3 : a_and_b port map ( data_in_0 => P_2(3) , data_in_1 => P_2(2) , data_out => P3(1) );

    g11_8_3 : a_and_bc port map ( data_a => G_2(5) , data_b => P_2(5) , data_c => G_2(4) , data_out => G3(2) );
    p11_8_3 : a_and_b port map ( data_in_0 => P_2(5) , data_in_1 => P_2(4) , data_out => P3(2) );

    g15_12_3 : a_and_bc port map ( data_a => G_2(7) , data_b => P_2(7) , data_c => G_2(6) , data_out => G3(3) );
    p15_12_3 : a_and_b port map ( data_in_0 => P_2(7) , data_in_1 => P_2(6) , data_out => P3(3) );

    g19_16_3 : a_and_bc port map ( data_a => G_2(9) , data_b => P_2(9) , data_c => G_2(8) , data_out => G3(4) );
    p19_16_3 : a_and_b port map ( data_in_0 => P_2(9) , data_in_1 => P_2(8) , data_out => P3(4) );

    g23_20_3 : a_and_bc port map ( data_a => G_2(11) , data_b => P_2(11) , data_c => G_2(10) , data_out => G3(5) );
    p23_20_3 : a_and_b port map ( data_in_0 => P_2(11) , data_in_1 => P_2(10) , data_out => P3(5) );

    g27_24_3 : a_and_bc port map ( data_a => G_2(13) , data_b => P_2(13) , data_c => G_2(12) , data_out => G3(6) );
    p27_24_3 : a_and_b port map ( data_in_0 => P_2(13) , data_in_1 => P_2(12) , data_out => P3(6) );

    g31_28_3 : a_and_bc port map ( data_a => G_2(15) , data_b => P_2(15) , data_c => G_2(14) , data_out => G3(7) );
    p31_28_3 : a_and_b port map ( data_in_0 => P_2(15) , data_in_1 => P_2(14) , data_out => P3(7) );

end architecture simple;
-----------------------------------------------

library ieee; 
use ieee.std_logic_1164.all;

entity Level_4 is
    port (P_3, G_3 : in std_logic_vector(7 downto 0) ; P4, G4 : out std_logic_vector(3 downto 0) );
end entity Level_4;

architecture simple of Level_4 is
    component a_and_b port(data_in_0, data_in_1: in std_logic; data_out: out std_logic);
    end component;
    component a_and_bc port(data_a, data_b, data_c: in std_logic; data_out : out std_logic);
    end component;

begin
    
    g7_0_4 : a_and_bc port map ( data_a => G_3(1) , data_b => P_3(1) , data_c => G_3(0) , data_out => G4(0) );
    p7_0_4 : a_and_b port map ( data_in_0 => P_3(1) , data_in_1 => P_3(0) , data_out => P4(0) );

    g15_8_4 : a_and_bc port map ( data_a => G_3(3) , data_b => P_3(3) , data_c => G_3(2) , data_out => G4(1) );
    p15_8_4 : a_and_b port map ( data_in_0 => P_3(3) , data_in_1 => P_3(2) , data_out => P4(1) );

    g23_16_4 : a_and_bc port map ( data_a => G_3(5) , data_b => P_3(5) , data_c => G_3(4) , data_out => G4(2) );
    p23_16_4 : a_and_b port map ( data_in_0 => P_3(5) , data_in_1 => P_3(4) , data_out => P4(2) );

    g31_24_4 : a_and_bc port map ( data_a => G_3(7) , data_b => P_3(7) , data_c => G_3(6) , data_out => G4(3) );
    p31_24_4 : a_and_b port map ( data_in_0 => P_3(7) , data_in_1 => P_3(6) , data_out => P4(3) );
    
end architecture simple;
--------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all;

entity Level_5 is
    port (P_4, G_4 : in std_logic_vector(3 downto 0) ; P5, G5 : out std_logic_vector(1 downto 0) );
end entity Level_5;

architecture simple of Level_5 is
    component a_and_b port(data_in_0, data_in_1: in std_logic; data_out: out std_logic);
    end component;
    component a_and_bc port(data_a, data_b, data_c: in std_logic; data_out : out std_logic);
    end component;

begin
    
    g15_0_5 : a_and_bc port map ( data_a => G_4(1) , data_b => P_4(1) , data_c => G_4(0) , data_out => G5(0) );
    p15_0_5 : a_and_b port map ( data_in_0 => P_4(1) , data_in_1 => P_4(0) , data_out => P5(0) );

    g31_16_5 : a_and_bc port map ( data_a => G_4(3) , data_b => P_4(3) , data_c => G_4(2) , data_out => G5(1) );
    p31_16_5 : a_and_b port map ( data_in_0 => P_4(3) , data_in_1 => P_4(2) , data_out => P5(1) );

end architecture simple;
---------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all;

entity Level_6 is
    port (P_5, G_5 : in std_logic_vector(1 downto 0) ; P6, G6 : out std_logic );
end entity Level_6;

architecture simple of Level_6 is
    component a_and_b port(data_in_0, data_in_1: in std_logic; data_out: out std_logic);
    end component;
    component a_and_bc port(data_a, data_b, data_c: in std_logic; data_out : out std_logic);
    end component;

begin
    
    g31_0_6 : a_and_bc port map ( data_a => G_5(1) , data_b => P_5(1) , data_c => G_5(0) , data_out => G6 );
    p31_0_6 : a_and_b port map ( data_in_0 => P_5(1) , data_in_1 => P_5(0) , data_out => P6 );

end architecture simple;

