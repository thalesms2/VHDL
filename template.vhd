library ieee;
use ieee.std_logic_1164.all;

entity mux2x1 is
    port (
        a : in std_logic;
        b : in std_logic;
        sel : in std_logic;
        s : out std_logic
    );
end mux2x1;

architecture arch_1 of mux2x1 is
begin

    s <= a when sel = '1' else b;

    --generate_label:
    for _index_variable in _range _generate_label
        _statement;
        _statement;
    end generate;

end arch_1 ;

architecture arch_2 of mux2x1 is
begin
    process(a,b,sel)
    begin
        if sel = '0' then
            s <= a;
        else 
            s <= b;
        end if;
    end process;
end arch_2;




p_next_state: process(state_reg, go, back)
  begin
    case (state_reg) is
      when s0 => if (go='1') then
                   next_state <= s1;
                 else
                   next_state <= s0;
                 end if;
      when s1 => if (back='1') then
                   next_stage <= s0;
                 else
                   next_stage <=s1;
                 end if;
      when others => next_stage <= s0;
    end case;
