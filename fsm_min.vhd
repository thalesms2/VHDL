p_state_reg: process(clk,clrn)
    begin
        if (clrn='0') then
            state_reg <= s0;
        elsif (clk'EVENT and clk='1') then
            state_reg <= next_state;
        end if;
    end process;