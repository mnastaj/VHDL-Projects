
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Mode8 is
 Port ( CLOCK_IN : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        TICK : in  STD_LOGIC;
        switch : in STD_LOGIC_VECTOR (1 downto 0);
        ledy_1 : out STD_LOGIC_VECTOR (7 downto 0)

        );
end Mode8;

architecture Behavioral of Mode8 is

signal count : natural := 0;
signal toggle : bit := '1';
signal leds : STD_LOGIC_VECTOR (7 downto 0);
signal leds_base :STD_LOGIC_VECTOR (7 downto 0) := "00000001";   


begin

ledy_1 <= leds; 

Mode8_proc: process(CLOCK_IN) is
	begin
	    if(RESET = '1') then 
        count <= 0;
        leds <= "00000000";
		elsif(rising_edge(CLOCK_IN) and TICK = '1') then
                if(count <= 7) then
                    leds <= std_logic_vector(unsigned(leds) sll 1);
                    count <= count + 1;
                        if(count = 7) then
                            leds <= leds_base;
                            count <=0;
                        end if;
                        end if;
                        end if; 
    case switch is
	when "00" =>
				leds_base<="00000001";
	when "01" =>
				leds_base<="00000011";
	when "10" =>
				leds_base<="00000111";
	when "11" =>
				leds_base<="00001111";
	when others	=>
				leds_base<="00000001";
	end case;
end process;
end Behavioral;