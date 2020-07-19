-- registrador de 4 bits em VHDL
-- Autor: Gabriel Vínicius 
-- Data: 19/07/2020

library ieee;
use ieee.std_logic_1164.all;  
entity shift_register is  
port   
(  
     clk : in std_logic;  
     rst : in std_logic;  
     A : in std_logic;  --input
     B : out std_logic  --output
);  
end shift_register; 

architecture rtl of shift_register is  
signal regis_data : std_logic_vector (3 downto 0);  
begin  
B <= regis_data(3);  
process(clk,sys_rst)  
begin  
if (sys_rst = '1') then  
     regis_data <= "0000";  
elsif rising_edge(clk) then  
     regis_data(0) <= A;  
     regis_data(1) <= regis_data(0);  
     regis_data(2) <= regis_data(1);  
     regis_data(3) <= regis_data(2);  
end if;  
end process;  
end architecture rtl; 