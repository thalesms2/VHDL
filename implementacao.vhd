library ieee;
use ieee.std_logic_1164.all;

entity implementacao is
  port(
    i_DIN0  : in  std_logic;
    i_DIN1  : in  std_logic;
    i_DIN2  : in  std_logic;
    i_DIN3  : in  std_logic;
    o_DOUT0 : out std_logic;
	 o_DOUT1 : out std_logic);
end implementacao;

architecture arch_1 of implementacao is

  attribute chip_pin : string;
  attribute chip_pin of i_DIN0  : signal is "AB12";
  attribute chip_pin of i_DIN1  : signal is "AB13";
  attribute chip_pin of i_DIN2  : signal is "AA13";
  attribute chip_pin of i_DIN3  : signal is "AA14";
  attribute chip_pin of o_DOUT1 : signal is "L1";
  attribute chip_pin of o_DOUT0 : signal is "L2";

signal w_DOUT0, w_DOUT1, w_DOUT2, w_DOUT3 : std_logic;
component project is 
  port(
    i_DIN0  : in  std_logic;
	 i_DIN1  : in  std_logic;
	 i_DIN2  : in  std_logic;
	 i_DIN3  : in  std_logic;
	 o_DOUT0 : out std_logic;
	 o_DOUT1 : out std_logic;
	 o_DOUT2 : out std_logic;
	 o_DOUT3 : out std_logic);
  end component;
begin
    ex : project port map (i_DIN0  =>  i_DIN0,
								   i_DIN1  =>  i_DIN1,
								   i_DIN2  =>  i_DIN2,
								   i_DIN3  =>  i_DIN3,
								   o_DOUT0 =>  w_DOUT0,
								   o_DOUT1 =>  w_DOUT1,
								   o_DOUT2 =>  w_DOUT2,
								   o_DOUT3 =>  w_DOUT3);
                   o_DOUT0 <= (w_DOUT3 and not w_DOUT0 and not w_DOUT1) or (w_DOUT2 and not w_DOUT1 and not w_DOUT0);
	 o_DOUT1 <= (w_DOUT1 and not w_DOUT0) or (w_DOUT3 and not w_DOUT2 and not w_DOUT1);
end arch_1;