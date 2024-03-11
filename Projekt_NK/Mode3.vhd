----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.01.2024 19:49:13
-- Design Name: 
-- Module Name: Mode3 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mode3 is
 Port ( CLOCK_IN : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        TICK : in  STD_LOGIC;
        ledy_2 : out STD_LOGIC_VECTOR (7 downto 0)
        );
end Mode3;

architecture Behavioral of Mode3 is

signal toggle : bit := '1';
signal leds : STD_LOGIC_VECTOR (7 downto 0):= "00000000";

begin

ledy_2 <= leds;

Mode3_proc: process(CLOCK_IN) is
    begin 
	 	  if(RESET = '1') then
			  toggle <= '1';
			  leds <= "00000000";
        elsif(rising_edge(CLOCK_IN) and TICK = '1') then
            if(toggle = '1') then
                leds <="11111111";
                toggle <= '0';
            else
                leds <="00000000";
                toggle <= '1';
            end if;
        end if;
end process;                                

end Behavioral;
