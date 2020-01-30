library ieee;
use ieee.std_logic_1164.all;

entity fftyped is
    port (i_DIN   : in  std_logic;
	       i_CLR   : in  std_logic;
          i_CLOCK : in  std_logic;
          o_DOUT  : out std_logic);
end fftyped;

architecture arch_1 of fftyped is
begin
  process (i_CLR)
  begin
    if i_CLR = '0' then
      if rising_edge(i_CLOCK) then
		  o_DOUT <= i_DIN;
		end if;
	 end if;
  end process;
end arch_1;