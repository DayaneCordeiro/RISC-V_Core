library ieee;
use ieee.std_logic_1164.all;

entity xor_gate is
	port(
		a, b : in std_logic;
			q : out std_logic
	);
end xor_gate;

architecture xor_gate of xor_gate is
begin
	q <=  '0' when a = '0' and b = '0' else
			'1' when a = '0' and b = '1' else
			'1' when a = '1' and b = '0' else
			'0' when a = '1' and b = '1';
-- q <= a xor b;
end xor_gate;