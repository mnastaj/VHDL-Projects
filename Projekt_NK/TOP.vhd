
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity TOP is
    Port ( btnR : in STD_LOGIC; 
           btnC : in STD_LOGIC; 
           btnL : in STD_LOGIC; 
           clk : in STD_LOGIC;
           sw : in STD_LOGIC_VECTOR (1 downto 0);  
           led : out STD_LOGIC_VECTOR (7 downto 0));
           
end TOP;

architecture Behavioral of TOP is

signal COUT : STD_LOGIC := '0';
signal BTNR_O : STD_LOGIC := '0'; 
signal BTNC_O : STD_LOGIC := '0'; 
signal BTNL_O : STD_LOGIC := '0';
signal LED_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000000"; 
signal LED_2 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";


begin

Debouncer: entity work.Debouncer 
    GENERIC MAP (               
         COUNT_MAX => 2            
         )
    PORT MAP (
        CLOCK_IN => clk,    
        BIN => btnR,             
        BOUT => BTNR_O           
        );
Debouncer_1: entity work.Debouncer 
    GENERIC MAP (
         COUNT_MAX => 2
         )
    PORT MAP ( 
        CLOCK_IN => clk,
        BIN => btnC,
        BOUT => BTNC_O
        );  
Debouncer_2: entity work.Debouncer 
    GENERIC MAP (
         COUNT_MAX => 2
                 )
    PORT MAP (
        CLOCK_IN => clk,
        BIN => btnL,
        BOUT => BTNL_O
        );      
         
Prescaler: entity work.Prescaler GENERIC MAP(
        speed => 2 ,                  
        prescalar => 3)                 
	PORT MAP (
	      INPUT => BTNL_O,     
          CLOCK_IN => clk,          
          CLOCK_OUT => COUT             
        );

Counter: entity work.Counter PORT MAP (    
        INPUT_C => BTNC_O, 
        INPUT_R => BTNR_O, 
        INPUT_1 => LED_1, 
        INPUT_2 => LED_2, 
        OUTPUT => led, 
        CLOCK_IN => clk
        );

Mode3: entity work.Mode3 PORT MAP ( 
          RESET => BTNR_O,          
          CLOCK_IN => clk,
          TICK => COUT,
          ledy_2 => LED_1
        );

Mode8: entity work.Mode8 PORT MAP (
          RESET => BTNR_O,
          CLOCK_IN => clk,
          TICK => COUT,
          switch => sw,
          ledy_1 => LED_2
        );
end Behavioral;