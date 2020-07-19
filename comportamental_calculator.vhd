--Projeto de descrição de Hardwre
-- Contrução de uma calculadora de 4bits 
--Tabela de Comandos:
-- S2 S1 S0 | Opreações
-- 0  0  0  | 0000
-- 0  0  1  | A + B 
-- 0  1  0  | A - B 
-- 0  1  1  |   A 
-- 1  0  0  | NOT A 
-- 1  0  1  | A OR B 
-- 1  1  0  | A AND B 
-- 1  1  1  | A XOR B 

-- Autor: Gabriel Vnícius 
-- Data: Julho de 2020

-- Curso de Sitemas Ditais, Eng Biomédica, UFRN

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity calculator is 
    port(
        A,B  : in std_logic_vector(3  downto 0); --input numbers  
        result : out std_logic_vector(3  downto 0); --output
        sel : in std_logic_vector(2  downto 0);
        clk, ld : in std_logic
    );
end entity calculator;

architecture main of calculator is 
	signal ld_result : std_logic_vector(3 downto 0);
begin  
    alu: process(A,B,sel,clk,ld)
    begin
        if (clk'EVENT AND clk = '1') then
            if ld = '1' then
                case sel is
                    
                    when "001" => ld_result <=  A + B;
                    when "010" => lg_result <=  A - B;
                    when "011" => ld_result <=    A;
                    when "100" => ld_result <=  not A;
                    when "101" => ld_result <= A or B;
                    when "110" => ld_result <= A and B;
                    when "111" => ld_result <= a xor b;
                    when others => ld_result <= "0000";
                
                end case;
            else 
                ld_result <= ld_result;
            end if;
        end if;            
    end process;
end main;