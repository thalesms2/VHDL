library ieee;
use ieee.std_logic_1164.all;

entity demux_tb is
port (
	o_SEL : buffer std_logic;
	o_DIN : buffer std_logic;
	o_DOUT0 : buffer std_logic;
	o_DOUT1 : buffer std_logic);
end demux_tb;

architecture arch_1 of demux_tb is
    component demux is 
	  port (
		 i_SEL : in std_logic;
		i_DIN : in std_logic;
		o_DOUT0 : out std_logic;
		o_DOUT1 : out std_logic);
	  end component;
    begin
        d_0 : demux port map (i_SEL => o_SEL,
										i_DIN => o_DIN,
										o_DOUT0 => o_DOUT0,
										o_DOUT1 => o_DOUT1);
    process
    begin
        o_SEL <= '0';
        o_DIN <= '1';
        wait for 100 ns;
        o_SEL <= '1';
        wait for 100 ns;
    end process;
end arch_1;