library ieee;
use ieee.std_logic_1164.all;

entity mux_tb is
port (
	o_SEL : buffer std_logic;
	o_DIN0 : buffer std_logic;
	o_DIN1 : buffer std_logic;
	o_DOUT : buffer std_logic);
end mux_tb;

architecture arch_1 of mux_tb is
    component mux is 
	  port (
		 i_SEL : in std_logic;
		 i_DIN0 : in std_logic;
		 i_DIN1 : in std_logic;
		 o_DOUT : out std_logic);
	  end component;
    begin
        m_0 : mux port map (i_SEL  => o_SEL,
								i_DIN0 => o_DIN0,
								i_DIN1 => o_DIN1,
								o_DOUT => o_DOUT);
    process
    begin
        o_SEL <= '0';
        o_DIN0 <= '0';
        o_DIN1 <= '1';
        wait for 100 ns;
        o_SEL <= '1';
        wait for 100 ns;
    end process;
end arch_1;