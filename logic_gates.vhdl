library ieee;
use ieee.std_logic_1164.all;

entity a_and_b is
    port(data_in_0, data_in_1: in std_logic;
     data_out: out std_logic);
end entity a_and_b;

architecture simple of a_and_b is
begin
    data_out <= data_in_0 and data_in_1 after 100 ps;
end architecture simple;

library ieee;
use ieee.std_logic_1164.all;

entity xor2 is
  port (
    data_in_0, data_in_1: in std_logic;
    data_out: out std_logic);
end entity xor2;

architecture simple of xor2 is
begin
    data_out <= data_in_0 xor data_in_1 after 100 ps;
end architecture simple;

library ieee;
use ieee.std_logic_1164.all;

entity a_and_bc is
  port (
    data_a, data_b, data_c: in std_logic;
    data_out : out std_logic);
end entity a_and_bc;

architecture simple of a_and_bc is
begin
  data_out <= data_a or (data_b and data_c) after 100 ps;
end architecture simple;