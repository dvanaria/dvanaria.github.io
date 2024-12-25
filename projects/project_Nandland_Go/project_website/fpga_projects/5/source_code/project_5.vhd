library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity project_5 is
    port (i_Clk         : in  std_logic;
          i_Switch_2    : in  std_logic;
          o_Segment2_A  : out std_logic;
          o_Segment2_B  : out std_logic;
          o_Segment2_C  : out std_logic;
          o_Segment2_D  : out std_logic;
          o_Segment2_E  : out std_logic;
          o_Segment2_F  : out std_logic;
          o_Segment2_G  : out std_logic);
end entity project_5;

architecture RTL of project_5 is

    signal counter  :  integer range 0 to 9  :=  0;
    signal w_Switch :  std_logic;
    signal r_Switch :  std_logic := '0';  
    signal w_Segment_A  :  std_logic;
    signal w_Segment_B  :  std_logic;
    signal w_Segment_C  :  std_logic;
    signal w_Segment_D  :  std_logic;
    signal w_Segment_E  :  std_logic;
    signal w_Segment_F  :  std_logic;
    signal w_Segment_G  :  std_logic;

begin

    Debounce_Switch_Instance : entity work.Debounce_Switch
        port map (
             i_Clk    =>    i_Clk,
             i_Switch =>    i_Switch_2,
             o_Switch =>    w_Switch);

    Segment_Display_Instance : entity work.Nibble_to_7_Segment_Converter
        port map (
            i_Clk    =>     i_Clk,
            i_Binary_Num   =>    std_logic_vector(to_unsigned(counter, 4)),
            o_Segment_A    =>    w_Segment_A,
            o_Segment_B    =>    w_Segment_B,
            o_Segment_C    =>    w_Segment_C,
            o_Segment_D    =>    w_Segment_D,
            o_Segment_E    =>    w_Segment_E,
            o_Segment_F    =>    w_Segment_F,
            o_Segment_G    =>    w_Segment_G);

    p_Switch_Count : process (i_Clk)
    begin
        if rising_edge(i_Clk) then
            r_Switch  <=  w_Switch;
            if (w_Switch = '1' and r_Switch = '0') then
                if (counter < 9) then
                    counter <= counter + 1;
                else
                    counter <= 0;
                end if;
            end if;
        end if;
    end process p_Switch_Count;

    o_Segment2_A <= not w_Segment_A;
    o_Segment2_B <= not w_Segment_B;
    o_Segment2_C <= not w_Segment_C;
    o_Segment2_D <= not w_Segment_D;
    o_Segment2_E <= not w_Segment_E;
    o_Segment2_F <= not w_Segment_F;
    o_Segment2_G <= not w_Segment_G;

end architecture RTL;
