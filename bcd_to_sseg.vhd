library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- First entity
entity bcd_to_sseg is
    port (SW : in  std_logic_vector(7 downto 0); 
	       HEX0, HEX1 : out std_logic_vector(0 to 6));
end entity bcd_to_sseg;

architecture behaviour of bcd_to_sseg is
	component decimal_to_sseg
		port (dec_in : in std_logic_vector(3 downto 0);
				sseg_out : out std_logic_vector(0 to 6));
	end component;
	
begin
	bcd_to_sseg0: decimal_to_sseg port map (dec_in => SW(3 downto 0), sseg_out => HEX0);
	bcd_to_sseg1: decimal_to_sseg port map (dec_in => SW(7 downto 4), sseg_out => HEX1);
end behaviour;
