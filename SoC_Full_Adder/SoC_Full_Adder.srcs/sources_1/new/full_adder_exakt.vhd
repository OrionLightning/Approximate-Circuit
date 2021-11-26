----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2021 11:53:04
-- Design Name: 
-- Module Name: full_adder_exakt - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 1 Bit exact Full adder 

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_adder_exakt is
    Port    ( A : in std_logic;
              B : in std_logic;
              Cin : in std_logic;
              S : out std_logic;
              Cout : out std_logic
           );
end full_adder_exakt;

architecture Behavioral of full_adder_exakt is

signal s_WIRE_1 : std_logic;
signal s_WIRE_2 : std_logic;
signal s_WIRE_3 : std_logic;

begin

        s_WIRE_1 <= A xor B;
        s_WIRE_2 <= s_WIRE_1 and Cin;
        s_WIRE_3 <= A and B;
 
        S   <= s_WIRE_1 xor Cin;
        Cout <= s_WIRE_2 or s_WIRE_3;


end Behavioral;
