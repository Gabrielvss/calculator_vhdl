-- Somador carry ripple de 4 bits em VHDL
-- Autor: Gabriel Vínicius 
-- Data: 19/07/2020

library ieee;
use ieee.std_logic_1164.all;

entity carry_ripple_4bit_adder is
  port (
    -- inputs
    A, B        :   in  std_logic_vector(3 downto 0);
    CARRY_IN    :   in  std_logic;

    -- outputs
    S           :   out std_logic_vector(3 downto 0);
    CARRY_OUT   :  out std_logic
  ) ;
end carry_ripple_4bit_adder;

architecture main of carry_ripple_4bit_adder is

    -- Declaração do componente Full_adder
    component full_adder is
        port (
          A, B    :   in  std_logic;
          CARRY_IN:   in  std_logic;
          SUM     :   out std_logic;
          CARRY   :   out std_logic
        ) ;
    end component full_adder;

    -- Sinais internos
    signal C1, C2, C3   :   std_logic;

begin

    -- Instanciações posicionais
    S1: full_adder port map(A(0), B(0), CARRY_IN, S(0), C1);
    S2: full_adder port map(A(1), B(1), C1      , S(1), C2);
    S3: full_adder port map(A(2), B(2), C2      , S(2), C3);
    S4: full_adder port map(A(3), B(3), C3      , S(3), CARRY_OUT);

end main ; -- main