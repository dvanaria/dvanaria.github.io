module Debounce_Switch (input i_Clk, 
                        input i_Switch, 
                        output o_Switch);
 
    parameter CYCLES_UNTIL_STABLE = 250000;  // 10 ms at 25 MHz
   
    reg [17:0] r_counter = 0;
    reg r_stable_switch_state = 1'b0;
 
    always @(posedge i_Clk) begin

        if (i_Switch !== r_stable_switch_state && r_counter < CYCLES_UNTIL_STABLE)
            r_counter <= r_counter + 1;
        else if (r_counter == CYCLES_UNTIL_STABLE) begin
            r_stable_switch_state <= i_Switch;
            r_counter <= 0;
        end
        else
            r_counter <= 0;
    end
 
    assign o_Switch = r_stable_switch_state;
 
endmodule