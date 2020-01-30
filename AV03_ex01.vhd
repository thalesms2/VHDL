library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity clock_50 is
generic (p_W : natural := 4);                             -- width
port (i_D     : in  std_logic_vector(p_W-1 downto 0);     -- input
i_CLK   : in  std_logic;                            -- clock
i_CLR_n : in  std_logic;                            -- clear
i_ENA   : in  std_logic;                            -- enable
i_LOAD  : in  std_logic;                            -- load
o_Q     : out std_logic_vector(p_W-1 downto 0));    -- output
end clock_50;

architecture arch_1 of counter_Wbits is
signal w_Q : std_logic_vector(p_W-1 downto 0);
begin
process(i_CLK, i_CLR_n)
begin
if (i_CLR_n = '0') then
w_Q <= (others => '0');
elsif (i_CLK'event and i_CLK = '1') then
if (i_LOAD = '1') then
w_Q <= i_D;
else
if (i_ENA = '1') then
w_Q <= w_Q + 1;
end if;
end if;
end if;
end process;
o_Q <= w_Q;
end arch_1;

