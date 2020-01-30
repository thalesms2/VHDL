library ieee;
use ieee.std_logic_1164.all;

entity class is
generic (W:natural := 16);

port (a, b : in bit_vector (W-1 downto 0); -- data inputs
		sel : in bit; -- selector
		s : out bit_vector (W-1 downto 0)); -- data output
end class;

architecture arch_1 of class is
begin
	f0 : for i in w-1 downto 0 generate
		s(i) <= (a(i) and not sel) or (b(i) and sel);
	end generate f0;
end arch_1;