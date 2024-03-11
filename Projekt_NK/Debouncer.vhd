----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.01.2024 14:25:48
-- Design Name: 
-- Module Name: Debouncer - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Debouncer is
    Generic (
		COUNT_MAX : natural
	 );
    port(   CLOCK_IN : in std_logic;
            BIN : in std_logic;
            BOUT : out std_logic
        );
end Debouncer;

architecture Behavioral of Debouncer is

constant BTN_ACTIVE : std_logic := '1';

signal count : integer := 0;
type state_type is (idle,wait_time); 
signal state : state_type := idle;

begin
  
process(CLOCK_IN)
begin
    if(rising_edge(CLOCK_IN)) then
        case (state) is
            when idle =>
                if(BIN = BTN_ACTIVE) then  
                    state <= wait_time;
                else
                    state <= idle; 
                end if;
                BOUT <= '0';
            when wait_time =>
                if(count = COUNT_MAX) then
                    count <= 0;
                    if(BIN = BTN_ACTIVE) then
                        BOUT <= '1';
                    end if;
                    state <= idle;  
                else
                    count <= count + 1;
                end if; 
        end case;       
    end if;        
end process;                  
                                                                                
end architecture Behavioral;