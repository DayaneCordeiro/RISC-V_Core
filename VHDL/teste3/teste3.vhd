-- Descrição VHL compatível com um exemplo de circuito --

library ieee;
use ieee.std_logic_1164.all;

entity Teste3 is
	port (
		-- Definindo as entradas --
		entradaA : in std_logic;
		entradaB : in std_logic;
		entradaC : in std_logic;
		
		-- Definindo as saídas --
		saidaD : out std_logic;
		saidaE : out std_logic
	);
end Teste3;

architecture TESTE of Teste3 is
begin
	saidaD <=   ((not entradaA) and entradaB) or
					((not entradaA) and entradaC) or
					(entradaB and entradaC);
					
	saidaE <=	(entradaA xor entradaB) xor entradaC;
	
end TESTE;