library ieee;
use ieee.std_logic_1164.all;

entity seis is
  port(
    i_DIN0  : in  std_logic;
    i_DIN1  : in  std_logic;
    i_DIN2  : in  std_logic;
    i_DIN3  : in  std_logic;
    o_DOUT0 : out std_logic;
	 o_DOUT1 : out std_logic;
	 o_DOUT2 : out std_logic);
end seis;

architecture arch_1 of seis is

attribute chip_pin : string;
attribute chip_pin of i_DIN0  : signal is "AB12";
attribute chip_pin of i_DIN1  : signal is "AB13";
attribute chip_pin of i_DIN2  : signal is "AA13";
attribute chip_pin of i_DIN3  : signal is "AA14";
attribute chip_pin of o_DOUT2 : signal is "U1";
attribute chip_pin of o_DOUT1 : signal is "L1";
attribute chip_pin of o_DOUT0 : signal is "L2";

component implementacao is 
  port(
    i_DIN0  : in  std_logic;
	 i_DIN1  : in  std_logic;
	 i_DIN2  : in  std_logic;
	 i_DIN3  : in  std_logic;
	 o_DOUT0 : out std_logic;
	 o_DOUT1 : out std_logic);
end component;
begin
    im : implementacao port map (i_DIN0  =>  i_DIN0,
											i_DIN1  =>  i_DIN1,
											i_DIN2  =>  i_DIN2,
											i_DIN3  =>  i_DIN3,
											o_DOUT0 =>  o_DOUT0,
											o_DOUT1 =>  o_DOUT1);
    o_DOUT2 <= i_DIN0 or i_DIN1 or i_DIN2 or i_DIN3;
end arch_1;