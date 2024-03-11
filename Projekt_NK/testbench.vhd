library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOP_tb is
--  Port ( );
end TOP_tb;

architecture Behavioral of TOP_tb is

   signal clk : std_logic := '0';  
   signal btnR : std_logic := '0';
   signal btnC : std_logic := '0';
   signal btnL : std_logic := '0';
   signal COUT : std_logic := '0';
   signal sw : STD_LOGIC_VECTOR (1 downto 0) := "00";
   signal led : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
   
begin

top_test: entity work.TOP PORT MAP (
      btnR => btnR,
      btnC => btnC,
      btnL => btnL,
      clk => clk,
      sw => sw,
      led => led
    );
    
CLOCK_IN_process :process
   begin
		clk <= '0';
		wait for 2ns;
		clk <= '1';
		wait for 2ns;
   end process;
   
Predkosc: process is 
    begin
        wait for 200ns;
        btnL <= '1'; wait for 20ns;
        btnL <= '0'; wait for 240ns;
    end process;

Off_On: process is
    begin
        btnC <= '1'; wait for 20ns;
        btnC <= '0'; wait for 340ns;
    end process;
    
Mode: process is 
    begin
        wait for 24ns;
        btnR <= '1'; wait for 20ns;
        btnR <= '0'; wait for 400ns;
    end process;
    
Switch: process is 
    begin
        wait for 10ns;
        sw <= "00"; wait for 100ns;
        sw <= "01"; wait for 100ns;
        sw <= "10"; wait for 100ns;
        sw <= "11"; wait for 100ns;
    end process;        
end Behavioral;