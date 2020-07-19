-- Meio somador em VHDL
-- Autor: Gabriel Vínicius 
-- Data: 19/07/2020

library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
  port (
    A, B    :   in  std_logic;
    SUM     :   out std_logic;
    CARRY   :   out std_logic
  ) ;
end half_adder;

architecture dataflow of half_adder is
begin
    SUM     <= A xor B;
    CARRY   <= A and B;
end dataflow ; -- dataflow


