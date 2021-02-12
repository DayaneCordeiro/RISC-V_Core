library ieee;
use ieee.std_logic_1164.all;

entity adder_1bit is
	port(
		a    : in std_logic;
		b    : in std_logic;
		cin  : in std_logic;
		sum  : out std_logic;
		cout : out std_logic
	);
end adder_1bit;

architecture adder_1bit of adder_1bit is
begin
	sum  <= (a xor b) xor cin;
	cout <= (a and b) or ((a xor b) and cin);
end adder_1bit;