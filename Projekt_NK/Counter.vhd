----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.01.2024 14:44:23
-- Design Name: 
-- Module Name: Counter - Behavioral
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

entity Counter is
 Port ( 
        INPUT_C : in  STD_LOGIC;
        INPUT_R : in  STD_LOGIC;
        INPUT_1 : in  STD_LOGIC_VECTOR (7 downto 0);
        INPUT_2 : in  STD_LOGIC_VECTOR (7 downto 0);
        CLOCK_IN : in  STD_LOGIC;
        OUTPUT : out  STD_LOGIC_VECTOR (7 downto 0)
        );
end Counter;

architecture Behavioral of Counter is

signal count_r : integer := 0;
signal count_c : integer := 0;
signal output_multi : STD_LOGIC_VECTOR (7 downto 0):= "00000000";
signal led_output : STD_LOGIC_VECTOR (7 downto 0):= "00000000";
signal led_off : STD_LOGIC_VECTOR (7 downto 0):= "00000000";


signal prev_INPUT_R : STD_LOGIC := '0';
signal prev_INPUT_C : STD_LOGIC := '0';

begin

Counter : process (CLOCK_IN)
begin
    if(rising_edge(CLOCK_IN)) then
        if(INPUT_R = '1' and prev_INPUT_R = '0') then
            if(count_r = 0) then
                count_r <= 1;
            else
                count_r <= 0;
            end if;
        end if;
        if(INPUT_C = '1' and prev_INPUT_C = '0') then
            if(count_c = 0) then
                count_c <= 1;
            else
                count_c <= 0;
            end if;
        end if;
        
        if(count_r = 0) then
            output_multi <= INPUT_2;
        else
            output_multi <= INPUT_1;
        end if;
        
        if(count_c = 0) then 
            led_output <= led_off;
        else
            led_output <= output_multi;
        end if;
        
        prev_INPUT_R <= INPUT_R;
        prev_INPUT_C <= INPUT_C;
    end if;
end process;

OUTPUT <= led_output;
end Behavioral;