library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TOP_tb is
end TOP_tb;

architecture Behavioral of TOP_tb is

    signal btnR_tb : std_logic := '0';
    signal btnC_tb : std_logic := '0';
    signal btnL_tb : std_logic := '0';
    signal clk_tb   : std_logic := '0';
    signal sw_tb    : std_logic_vector(1 downto 0) := "00";
    signal led_tb   : std_logic_vector(7 downto 0);

    constant CLK_PERIOD : time := 10 ns; -- Example clock period

begin

    -- Instantiate the DUT
    DUT : entity work.TOP
        port map (
            btnR => btnR_tb,
            btnC => btnC_tb,
            btnL => btnL_tb,
            clk  => clk_tb,
            sw   => sw_tb,
            led  => led_tb
        );

    -- Clock process
    clk_process : process
    begin
        while now < 1000 ns loop
            clk_tb <= '0';
            wait for CLK_PERIOD / 2;
            clk_tb <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process clk_process;

    -- Stimulus process
    stimulus_process : process
    begin
        btnR_tb <= '0';
        btnC_tb <= '0';
        btnL_tb <= '0';
        sw_tb <= "00";
        wait for 20 ns;
        btnR_tb <= '1'; -- Example button R press
        wait for 10 ns;
        btnR_tb <= '0';
        wait for 50 ns;
        btnC_tb <= '1'; -- Example button C press
        wait for 10 ns;
        btnC_tb <= '0';
        wait for 50 ns;
        btnL_tb <= '1'; -- Example button L press
        wait for 10 ns;
        btnL_tb <= '0';
        wait for 50 ns;
        sw_tb <= "01"; -- Example switch change
        wait for 50 ns;
        sw_tb <= "10"; -- Example switch change
        wait;
    end process stimulus_process;

end Behavioral;


