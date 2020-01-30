library ieee;
use ieee.std_logic_1164.all;

entity project is
  port (
    i_DIN0  : in  std_logic;
	i_DIN1  : in  std_logic;
	i_DIN2  : in  std_logic;
	i_DIN3  : in  std_logic;
	o_DOUT0 : out std_logic;
	o_DOUT1 : out std_logic;
	o_DOUT2 : out std_logic;
	o_DOUT3 : out std_logic);
end project;

architecture arch_1 of project is

	attribute chip_pin : string;
	attribute chip_pin of i_DIN0  : signal is "AB12";
	attribute chip_pin of i_DIN1  : signal is "AB13";
	attribute chip_pin of i_DIN2  : signal is "AA13";
	attribute chip_pin of i_DIN3  : signal is "AA14";
	attribute chip_pin of o_DOUT0 : signal is "L1";
	attribute chip_pin of o_DOUT1 : signal is "L2";
	attribute chip_pin of o_DOUT2 : signal is "U1";
	attribute chip_pin of o_DOUT3 : signal is "U2";
  
begin
  o_DOUT0 <= i_DIN0;
  o_DOUT1 <= i_DIN1 and not i_DIN0;
  o_DOUT2 <= i_DIN2 and not i_DIN1 and not i_DIN0;
  o_DOUT3 <= i_DIN3 and not i_DIN2 and not i_DIN1 and not i_DIN0;
end arch_1;