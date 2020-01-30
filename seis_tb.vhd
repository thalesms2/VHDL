library ieee;
use ieee.std_logic_1164.all;

entity seis_tb is
  port(
    o_DIN0  : buffer std_logic;
    o_DIN1  : buffer std_logic;
    o_DIN2  : buffer std_logic;
    o_DIN3  : buffer std_logic;
    o_DOUT0 : buffer std_logic;
	 o_DOUT1 : buffer std_logic;
	 o_DOUT2 : buffer std_logic);
end seis_tb;

architecture arch_1 of seis_tb is
component seis is 
  port(
    i_DIN0  : in  std_logic;
    i_DIN1  : in  std_logic;
    i_DIN2  : in  std_logic;
    i_DIN3  : in  std_logic;
    o_DOUT0 : out std_logic;
	 o_DOUT1 : out std_logic;
	 o_DOUT2 : out std_logic);
end component;
begin
    se : seis port map (i_DIN0  =>  o_DIN0,
							   i_DIN1  =>  o_DIN1,
								i_DIN2  =>  o_DIN2,
								i_DIN3  =>  o_DIN3,
								o_DOUT0 =>  o_DOUT0,
								o_DOUT1 =>  o_DOUT1,
								o_DOUT2 =>  o_DOUT2);
    process
	 begin
	 o_DIN0 <= '0';
	 o_DIN1 <= '0';
	 o_DIN2 <= '0';
	 o_DIN3 <= '0';
	 wait for 100 ns;
	 o_DIN3 <= '1';
	 wait for 100 ns;
	 o_DIN2 <= '1';
	 wait for 100 ns;
	 o_DIN1 <= '1';
	 wait for 100 ns;
	 o_DIN0 <= '1';
	 wait for 100 ns;
  end process;
end arch_1;