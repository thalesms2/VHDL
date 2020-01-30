library ieee;
use ieee.std_logic_1164.all;

entity mux_std_tb is
generic (
	p_WIDTH : natural := 16); -- data width
port (
	o_SEL : buffer std_logic;
	o_DIN0 : buffer std_logic_vector(p_WIDTH-1 downto 0); -- data input
	o_DIN1 : buffer std_logic_vector(p_WIDTH-1 downto 0); -- data input
	o_DOUT : buffer std_logic_vector(p_WIDTH-1 downto 0)); -- data output
end mux_std_tb;

architecture arch_1 of mux_std_tb is
    
    component mux_std is 
    generic (
        p_Width : natural := 16);
    port (
        i_SEL : in std_logic;
        i_DIN0 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
        i_DIN1 : in std_logic_vector(p_WIDTH-1 downto 0); -- data input
        o_DOUT : out std_logic_vector(p_WIDTH-1 downto 0)); -- data output
    end component;
    begin
        u_0 : mux_std -- entity work.mux_std
            generic map (p_WIDTH => 16)
            port map (
                i_SEL => o_SEL,
                i_DIN0 => o_DIN0,
                i_DIN1 => o_DIN1,
                o_DOUT => o_DOUT);
    process
    begin
        o_SEL <= '0';
        o_DIN0 <= (others => '0');
        o_DIN1 <= (others => '1');
        wait for 100 ns;
        o_SEL <= '1';
        wait for 100 ns;
    end process;
end arch_1;