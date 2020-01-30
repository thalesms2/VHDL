library ieee;
use ieee.std_logic_1164.all;

entity mux is
generic (W:natural := 16);

port (a, b : in bit_vector (W-1 downto 0); -- data inputs
		sel : in bit; -- selector
		s : out bit_vector (W-1 downto 0)); -- data output
end mux;

architecture arch_1 of mux is
begin
	s <= a when sel  = '0' else b;
end arch_1;