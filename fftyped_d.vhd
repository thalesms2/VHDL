library ieee;
use ieee.std_logic_1164.all;

entity fftyped_d is
    port (i_DIN   : in  std_logic;
	       i_CLR   : in  std_logic;
          i_CLOCK : in  std_logic;
          o_DOUT  : out std_logic);
end fftyped_d;

architecture arch_1 of fftyped_d is
begin
  process (i_CLOCK)
  begin
    if rising_edge(i_CLOCK) then
      if i_CLR = '0' then
		  o_DOUT <= i_DIN;
		end if;
	 end if;
  end process;
end arch_1;