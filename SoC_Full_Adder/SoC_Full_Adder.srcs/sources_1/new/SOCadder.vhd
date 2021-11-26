----------------------------------------------------------------------------------
-- Company: TU WIEN
-- Engineer: 
-- 
-- Create Date: 26.10.2021 11:21:21
-- Design Name: N-bit Adder with exact and approximate approaches
-- Module Name: SOCadder - Behavioral
-- Description: 

----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SOCadder is
    generic ( N : integer := 8); -- Change N for desired bit adder
    Port    ( A : in std_logic_vector(N-1 downto 0);
              B : in std_logic_vector(N-1 downto 0);
              Cin : in std_logic;
              S : out std_logic_vector(N-1 downto 0);
              Cout : out std_logic
           );

end SOCadder;

architecture RTL of SOCadder is
    Component full_adder_exakt is
        Port(A, B, Cin: in std_logic;
            S, Cout: out std_logic);
    end Component;
    
    Component full_adder_appr is
        Port(A, B, Cin: in std_logic;
            S, Cout: out std_logic);
    end Component;

signal s_carry : std_logic_vector(N downto 0);

begin
    
    s_carry(0) <= Cin; Cout <= s_carry(N);

    generate_N_bit_adder:
    for k in 0 to N-1 generate
        FA_k: full_adder_exakt port map (A => A(k), B => B(k), Cin => s_carry(k), S => S(k), Cout => s_carry(k+1));
                                         
        --FA_k: full_adder_appr port map (A => A(k), B => B(k), Cin => s_carry(k), S => S(k), Cout => s_carry(k+1));
        
    end generate generate_N_bit_adder;
    
    
    
end RTL;
