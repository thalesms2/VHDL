library ieee;
use ieee.std_logic_1164.all;

entity fftype is
    port (i_DIN   : in  std_logic;
	       i_CLR   : in  std_logic;
			 i_WR    : in std_logic;
          i_CLOCK : in  std_logic;
          o_DOUT  : out std_logic);
end fftype;

architecture arch_1 of fftype is
begin
  process (i_CLR, i_CLOCK)
  begin
    if (i_CLR = '0') then
		o_DOUT <= '0';
	 elsif (i_CLOCK'EVENT and i_CLOCK = '1') then
      if (i_WR = '1') then
		  o_DOUT <= i_DIN;
		end if;
	 end if;
  end process;
end arch_1;