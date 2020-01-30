library ieee;
use ieee.std_logic_1164.all;

entity mux_std is
port (
	i_SEL : in std_logic;
	i_DIN0 : in std_logic
	i_DIN1 : in std_logic
	o_DOUT : out std_logic
end mux_std;

architecture arch_1 of mux_std is
begin
	o_DOUT <= i_DIN0 when i_SEL = '0' else i_DIN1;
end arch_1;