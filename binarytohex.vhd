----------------------------------------------------------------------------------
-- University of Mississippi - El E 386
-- Lab 4
-- Engineer: Ben Mighall
--
-- This program translates a four-bit binary number given by the on/off states of
-- switches 0 through 3, and outputs the single-digit hexadecimal equivalent
-- on the seven-segment display.
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity binarytohex is
    Port ( SW : in STD_LOGIC_VECTOR (15 downto 0);
           SSEG_AN : out STD_LOGIC_VECTOR (7 downto 0);
           SSEG_CA : out STD_LOGIC_VECTOR (7 downto 0));
end binarytohex;

architecture Behavioral of binarytohex is

begin

p1:process(SW)
begin
SSEG_AN <= "11111110";
--each of these output a single hexadecimal digit on the display, 0 through F
    case SW(3 downto 0) is
        when "0000" => SSEG_CA <= "11000000";
        when "0001" => SSEG_CA <= "11111001";
        when "0010" => SSEG_CA <= "10100100";
        when "0011" => SSEG_CA <= "10110000";
        when "0100" => SSEG_CA <= "10011001";
        when "0101" => SSEG_CA <= "10010010";
        when "0110" => SSEG_CA <= "10000010";
        when "0111" => SSEG_CA <= "11111000";
        when "1000" => SSEG_CA <= "10000000";
        when "1001" => SSEG_CA <= "10010000";
        when "1010" => SSEG_CA <= "10001000";
        when "1011" => SSEG_CA <= "10000011";
        when "1100" => SSEG_CA <= "11000110";
        when "1101" => SSEG_CA <= "10100001";
        when "1110" => SSEG_CA <= "10000110";
        when "1111" => SSEG_CA <= "10001110";
        when others => SSEG_CA <= "00000000";
    end case;
	
end process;
end Behavioral;
