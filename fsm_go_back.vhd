library ieee;
use ieee.std_logic_1164.all;

entity fsm_go_back is
    port (clk : in std_logic;
    clrn : in std_logic;
    go : in std_logic;
    back : in std_logic;
    q : out std_logic);
end fsm_go_back;

architecture arch_1 of fsm_go_back is
    type state_type is (s0,s1);
    signal state_reg : state_type;
    signal next_state : state_type;

begin
    p_next_state: process(state_reg, go, back)
  begin
    process (clk)
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
    end process;
end arch_1;