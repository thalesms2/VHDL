library ieee;
use ieee.std_logic_1164.all;

entity latch_d is
    port (i_DIN   : in  std_logic;
          i_CLOCK : in  std_logic;
          o_DOUT  : out std_logic);
end latch_d;

architecture arch_1 of latch_d is
begin
    process(i_DIN,i_CLOCK)
    begin
        if i_CLOCK = '1' then
            o_DOUT <= i_DIN;
        end if;
    end process;
end arch_1;