----------------------------------------------------------------------------------
-- Company: TU WIEN
-- Engineer: 
-- 
-- Create Date: 26.10.2021 11:21:21
-- Design Name: N-bit Adder with exact and approximate approaches
-- Module Name: SOCadder - Behavioral
-- Description: 
-- 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SOCadder is
    generic ( N : integer := 8); -- Change N for desired bit adder
    Port    ( A : in std_logic_vector(N-1 downto 0);
              B : in std_logic_vector(N-1 downto 0);
              Cin : in std_logic_vector(N-1 downto 0);
              S : out std_logic_vector(N-1 downto 0);
              Cout : out std_logic_vector(N-1 downto 0);
              S_a : out std_logic_vector(N-1 downto 0); --Approximate Sum out
              Cout_a : out std_logic_vector(N-1 downto 0) --Approximate Carry out
           );

end SOCadder;

architecture Behavioral of SOCadder is

signal s_inv_1 : std_logic_vector(N-1 downto 0);

begin

    generate_N_bit_adder:
    for k in 0 to N-1 generate
    
        -- Full adder (exact)
        S(k) <= A(k) XOR B(k) XOR Cin(k) ;
        Cout(k) <= (A(k) AND B(k)) OR (Cin(k) AND A(k)) OR (Cin(k) AND B(k)) ;
    
        -- Full adder INXA1 (Approx.)
        s_inv_1(k) <= A(k) XOR B(k) XOR Cin(k) ; -- Signal for binding S_a and Cout_a
    
        S_a(k) <= s_inv_1(k);
        Cout_a(k) <= NOT(s_inv_1(k)) ;

    end generate generate_N_bit_adder;
    
end Behavioral;
