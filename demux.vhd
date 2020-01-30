library ieee;
use ieee.std_logic_1164.all;

entity demux is
port (
  i_SEL : in std_logic;
  i_DIN : in std_logic;
  o_DOUT0 : out std_logic;
  o_DOUT1 : out std_logic);
end demux;

architecture arch_1 of demux is
  
  attribute chip_pin : string;
  attribute chip_pin of i_SEL   : signal is "U13";
  attribute chip_pin of i_DIN   : signal is "V13";
  attribute chip_pin of o_DOUT0 : signal is "AA2";
  attribute chip_pin of o_DOUT1 : signal is "AA1";

  begin
    o_DOUT0 <= i_DIN when i_SEL = '0' else '0';
	 o_DOUT1 <= i_DIN when i_SEL = '1' else '0';
end arch_1;