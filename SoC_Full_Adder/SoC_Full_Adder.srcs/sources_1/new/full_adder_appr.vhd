----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2021 12:56:16
-- Design Name: 
-- Module Name: full_adder_appr - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 1 Bit approximate Full adder (INXA 1)

-- XOR = OR + NAND + AND

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_adder_appr is
    Port    ( A : in std_logic;
              B : in std_logic;
              Cin : in std_logic;
              S : out std_logic;
              Cout : out std_logic
           );
end full_adder_appr;

architecture Behavioral of full_adder_appr is

signal s_WIRE_1 : std_logic;
signal s_WIRE_2 : std_logic;
signal s_WIRE_3 : std_logic;

begin

        --s_WIRE_1 <=  (A nand B) and (A or B);
        --s_WIRE_2 <= (s_WIRE_1 nand Cin) and (s_WIRE_1 or Cin);
        
        s_WIRE_1 <=  A xor B;
        s_WIRE_2 <= s_WIRE_1 xor Cin;
        
        S <= s_WIRE_2;
        Cout <= NOT(s_WIRE_2);

end Behavioral;
