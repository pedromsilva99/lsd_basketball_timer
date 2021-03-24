library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DeMux2_4 is
	port(	up				: in std_logic;
			down			: in std_logic;
			sel    		: in std_logic;
			upPontos		: out std_logic;
			upFaltas		: out std_logic;
			downPontos	: out std_logic;
			downFaltas	: out std_logic);
end DeMux2_4;

architecture Behavioral of DeMux2_4 is

begin

	upPontos <= up and (not sel);
	upFaltas <= up and sel;
	downPontos <= down and (not sel);
	downFaltas <= down and sel;
				  
end Behavioral;