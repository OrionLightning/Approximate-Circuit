----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.02.2022 12:10:10
-- Design Name: 
-- Module Name: SOCadder_tb - Behavioral
-- Project Name: 

-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SOCadder_tb is
end SOCadder_tb;

architecture Behavioral of SOCadder_tb is

COMPONENT SOCadder
PORT        ( A : in std_logic_vector(3 downto 0);
              B : in std_logic_vector(3 downto 0);
              Cin : in std_logic;
              S : out std_logic_vector(3 downto 0);
              Cout : out std_logic
           );
end COMPONENT;

--Inputs
signal A : std_logic_vector(3 downto 0) := (others => '0');
signal B : std_logic_vector(3 downto 0) := (others => '0');
signal Cin : std_logic := '0';
 
--Outputs
signal S : std_logic_vector(3 downto 0);
signal Cout : std_logic;


begin

 -- Instantiate the Unit Under Test (UUT)
uut: SOCadder PORT MAP (
A => A,
B => B,
Cin => Cin,
S => S,
Cout => Cout
);
 
 -- Stimulus process
stim_proc: process
begin

wait for 50 ns;
A <= "0001";
B <= "1000";
 
wait for 50 ns;
A <= "1001";
B <= "1110";
 
wait for 50 ns;
A <= "0110";
B <= "0111";
 
wait for 50 ns;
A <= "0110";
B <= "0110";

wait for 50 ns;
A <= "0011";
B <= "1100";
 
wait for 50 ns;
A <= "1111";
B <= "1111";
 
wait;
 
end process;

end Behavioral;


