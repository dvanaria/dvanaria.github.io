library ieee;
use ieee.std_logic_1164.all;

entity project_2 is
  port (
   i_Switch_1 : in std_logic;
   i_Switch_2 : in std_logic;
   o_LED_1 : out std_logic);
end entity project_2;

architecture RTL of project_2 is
begin 
    o_LED_1 <= i_Switch_1 and i_Switch_2;

end architecture RTL;
