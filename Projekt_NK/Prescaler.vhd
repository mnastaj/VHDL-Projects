library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Prescaler is
	 Generic (
		prescalar : natural;
		speed : natural
	 );
    Port ( INPUT : in STD_LOGIC;
           CLOCK_IN : in  STD_LOGIC;
           CLOCK_OUT : out  STD_LOGIC);
end Prescaler;

architecture Behavioral of Prescaler is
		signal count : natural := 0;
		signal count_speed : natural := 0;
		signal end_count : natural := prescalar;
		signal INTER_CLOCK : STD_LOGIC := '0';
begin
	CLOCK_OUT <= INTER_CLOCK;

	Prescaler_proc: process(CLOCK_IN) is
	begin
		if(rising_edge(CLOCK_IN)) then 
		
            if(INPUT = '1') then
                if(count_speed = 0) then
                    end_count <= speed;
                    count_speed <= 1;
                else
                    end_count <= prescalar; 
                    count_speed <= 0;
                end if;
            else
                if(count >= end_count - 1) then
                    count <= 0;
                    INTER_CLOCK <= '1';
                else
                   INTER_CLOCK <= '0';
                    count <= count + 1;
                end if;
		    end if;
		
		end if;
	end process;

end Behavioral;