module project_5 (input i_Switch_2,
                  input i_Clk,
                  output o_Segment2_A,
                  output o_Segment2_B,
                  output o_Segment2_C,
                  output o_Segment2_D,
                  output o_Segment2_E,
                  output o_Segment2_F,
                  output o_Segment2_G);

    reg [3:0] r_counter = 4'b0000;
    wire w_Switch_2;  // to detect current button state 
    reg r_Switch_2 = 1'b0;   // to store previous button state

    wire w_Segment_A;  // need intermediary here because output is inverted
    wire w_Segment_B;
    wire w_Segment_C;
    wire w_Segment_D;
    wire w_Segment_E;
    wire w_Segment_F;
    wire w_Segment_G;

    Debounce_Switch ds (.i_Clk(i_Clk),
                        .i_Switch(i_Switch_2),
                        .o_Switch(w_Switch_2));

    always @(posedge i_Clk) begin

        r_Switch_2 <= w_Switch_2;

        if (w_Switch_2 == 1'b1 && r_Switch_2 == 1'b0) begin
            
            // up edge - button just pressed down
           
            if (r_counter == 9)
                r_counter <= 0;
            else 
                r_counter <= r_counter + 1;

        end

    end

    Nibble_to_7_Segment_Converter bt7sc (.i_Clk(i_Clk),
                                         .i_Binary_Num(r_counter),
                                         .o_Segment_A(w_Segment_A),
                                         .o_Segment_B(w_Segment_B),
                                         .o_Segment_C(w_Segment_C),
                                         .o_Segment_D(w_Segment_D),
                                         .o_Segment_E(w_Segment_E),
                                         .o_Segment_F(w_Segment_F),
                                         .o_Segment_G(w_Segment_G));

    assign o_Segment2_A = ~w_Segment_A;
    assign o_Segment2_B = ~w_Segment_B;
    assign o_Segment2_C = ~w_Segment_C;
    assign o_Segment2_D = ~w_Segment_D;
    assign o_Segment2_E = ~w_Segment_E;
    assign o_Segment2_F = ~w_Segment_F;
    assign o_Segment2_G = ~w_Segment_G;

endmodule
