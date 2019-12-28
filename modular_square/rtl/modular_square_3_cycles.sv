module modular_square_3_cycles
#(
    parameter NUM_ELEMENTS          = 65,
    parameter BIT_LEN               = 17,
    parameter WORD_LEN              = 16
)
(
    input clk,
    input reset,
    input start,
    input logic [BIT_LEN-1:0] sq_in[NUM_ELEMENTS],
    output logic valid,
    output logic [BIT_LEN-1:0] sq_out[NUM_ELEMENTS]
);

    localparam longint LOOPS = 2**33;

    localparam IDLE         = 9'b000000001;
    localparam TRANS_DATA   = 9'b000000010;
    localparam CALCULATE0   = 9'b000000100;
    localparam CALCULATE1   = 9'b000001000;
    localparam REDUCTION    = 9'b000010000;
    localparam FINISH0      = 9'b000100000;
    localparam FINISH1      = 9'b001000000;
    localparam FINISH2      = 9'b010000000;
    localparam FINISH3      = 9'b100000000;
							
	localparam P = 1024'd124066695684124741398798927404814432744698427125735684128131855064976895337309138910015071214657674309443149407457493434579063840841220334555160125016331040933690674569571217337630239191517205721310197608387239846364360850220896772964978569683229449266819903414117058030106528073928633017118689826625594484331;

    logic [33:0] counter;
    logic reg_start;
    logic reg_valid;

    (* max_fanout = 50 *)  logic flag_h;

    logic [BIT_LEN-1:0] sq_in_current[NUM_ELEMENTS];
    logic [BIT_LEN-1:0] sq_out_reg[NUM_ELEMENTS];	

    logic [8:0] state_current;
    logic [8:0] state_next;
    logic finish_flag;

    logic [BIT_LEN-1:0] u_mid_sum[NUM_ELEMENTS];


    localparam FINAL_XPB_0 = 3;
    localparam EXTRA_BIT_XPB_0 = $clog2(FINAL_XPB_0+1);

    logic [BIT_LEN-1:0] ms_temp0[NUM_ELEMENTS];
    logic [BIT_LEN+EXTRA_BIT_XPB_0-1:0] u_ms_temp0[NUM_ELEMENTS-1];
    logic [NUM_ELEMENTS-2:0][WORD_LEN-1:0] final_xpb0[FINAL_XPB_0];

    logic [NUM_ELEMENTS*WORD_LEN-1:0]u_ms_temp1[2];
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0]ms_temp1;

    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0]u_ms_temp2;
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0]ms_temp2;
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0]ms_temp3;

    logic [BIT_LEN-1:0]actual_ms0[NUM_ELEMENTS];
    logic [BIT_LEN-1:0]actual_ms1[NUM_ELEMENTS];

    always_comb begin
        sq_in_current = sq_out_reg;
        sq_out = sq_out_reg;
        valid = reg_valid;
    end

    always_ff @(posedge clk) begin
        if(reset) begin 
            state_current <= IDLE;
        end
        else begin
            state_current <= state_next;
        end
    end
    

    always_comb begin
        case(state_current)
        IDLE: 
            begin
                if(reg_start)
                    state_next <= TRANS_DATA;
                else
                    state_next <= IDLE;
            end

        TRANS_DATA: 
            begin
                state_next <= CALCULATE0;
            end
        
        CALCULATE0: 
            begin
                state_next <= CALCULATE1;
            end
        CALCULATE1:
            begin 
                state_next <= REDUCTION;
            end
        REDUCTION:
            begin 
                if(counter < LOOPS+1) state_next <= CALCULATE0;
                else state_next <= FINISH0;
            end

        FINISH0: 
            begin
                state_next <= FINISH1;
            end

        FINISH1: 
            begin
                state_next <= FINISH2;
            end
        FINISH2: 
            begin
                if(finish_flag == 1'b1)
                    state_next <= FINISH3;
                else
                    state_next <= FINISH2;
            end
        
        FINISH3: 
            begin
                state_next <= IDLE;
            end

        default: 
            begin
                state_next <= IDLE;
            end
        endcase
    end

    always_ff@(posedge clk)begin
        case(state_next)
        IDLE: 
            begin
                counter     <= 32'b0;
                reg_start   <= start;
                reg_valid   <= 1'b0;
                sq_out_reg  <= sq_in;
                flag_h      <= 1'b1;
            end

        TRANS_DATA: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_out_reg  <= sq_in;
                flag_h      <= 1'b1;
            end

        CALCULATE0: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_out_reg  <= sq_out_reg;
                flag_h      <= 1'b0;
            end

        CALCULATE1:
            begin 
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_out_reg  <= sq_out_reg;
                flag_h      <= 1'b1;
            end
        
        REDUCTION:
            begin 
                counter     <= counter + 1'b1;
                reg_start   <= reg_start;
                reg_valid   <= (counter < LOOPS-1)? 1'b1 : 1'b0;
                sq_out_reg  <= u_mid_sum;
                flag_h      <= 1'b1;
            end

        FINISH0: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_out_reg  <= sq_out_reg;
                flag_h      <= 1'b1;
            end

        FINISH1: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_out_reg  <= sq_out_reg;
                flag_h      <= 1'b1;
            end
        FINISH2: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_out_reg  <= (finish_flag)? actual_ms1 : actual_ms0;
                flag_h      <= 1'b1;
            end
        
        FINISH3: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b1;
                sq_out_reg  <= sq_out_reg;
                flag_h      <= 1'b1;
            end

        default: 
            begin
                counter     <= 32'b0;
                reg_start   <= start;
                reg_valid   <= 1'b0;
                sq_out_reg  <= sq_in;
                flag_h      <= 1'b1;
            end
        endcase
    end


    

    xpb_lut_final u_xpb_lut_final0(.flag(sq_out_reg[NUM_ELEMENTS-1]), .xpb(final_xpb0));


    always_comb begin
        for(int i=0; i<NUM_ELEMENTS-1; i++)begin
            u_ms_temp0[i] = sq_out_reg[i];
            for(int j=0; j < FINAL_XPB_0; j++)begin
                u_ms_temp0[i] = u_ms_temp0[i] + final_xpb0[j][i];
            end
        end
    end

    always_ff@(posedge clk) begin
        ms_temp0[NUM_ELEMENTS-1] = { {EXTRA_BIT_XPB_0{1'b0}},u_ms_temp0[NUM_ELEMENTS-2][WORD_LEN+EXTRA_BIT_XPB_0-1:WORD_LEN] };
        ms_temp0[0] = { 1'b0, u_ms_temp0[0][WORD_LEN-1:0] };
        for (int i = 1; i < NUM_ELEMENTS-1; i++) begin
            ms_temp0[i] = u_ms_temp0[i][WORD_LEN-1:0] + u_ms_temp0[i-1][WORD_LEN+EXTRA_BIT_XPB_0-1:WORD_LEN];
        end
    end


    
    always_comb begin
        for (int i=0; i<NUM_ELEMENTS; i++) begin
            u_ms_temp1[0][i*WORD_LEN +: WORD_LEN] = ms_temp0[i][WORD_LEN-1:0];
            u_ms_temp1[1][i*WORD_LEN +: WORD_LEN] = {{(WORD_LEN-1){1'b0}}, ms_temp0[i][WORD_LEN]};
        end
    end

    always_ff@(posedge clk)begin
        ms_temp1 = u_ms_temp1[0] + (u_ms_temp1[1]<<WORD_LEN);
    end 

    

    always_comb begin
        case(state_next)
            FINISH2: u_ms_temp2 = ms_temp2 - P;
            default: u_ms_temp2 = ms_temp1 - P;
        endcase
    end
    
    always_ff@(posedge clk)begin
        finish_flag <= u_ms_temp2[NUM_ELEMENTS-1][WORD_LEN-1];
        ms_temp2 <= u_ms_temp2;
        ms_temp3 <= ms_temp2;
    end

    always_comb begin
        actual_ms0[NUM_ELEMENTS-1] = 17'b0;
        actual_ms1[NUM_ELEMENTS-1] = 17'b0;
        for(int i=0; i<NUM_ELEMENTS-1; i++)begin
            actual_ms0[i] = {1'b0, ms_temp2[i]};
            actual_ms1[i] = {1'b0, ms_temp3[i]};
        end
    end


    logic [BIT_LEN-1:0] u_S_h[NUM_ELEMENTS+1];
    logic [BIT_LEN-1:0] u_S_l[NUM_ELEMENTS+2];

    logic [BIT_LEN-1:0] reg_S_h[NUM_ELEMENTS+1];
    logic [BIT_LEN-1:0] reg_S_l[NUM_ELEMENTS+2];

    alu_array #(.NUM_ELEMENTS(NUM_ELEMENTS), .BIT_LEN(BIT_LEN), .WORD_LEN(WORD_LEN))
        u_alu_array (.sq_in(sq_out_reg), .flag_h(flag_h), .S_h(u_S_h), .S_l(u_S_l));

    always_ff@(posedge clk)begin
        reg_S_h <= u_S_h;
        reg_S_l <= u_S_l;
    end

    

    logic [BIT_LEN-1:0] u_xpb_high_sum[NUM_ELEMENTS];
    logic [BIT_LEN-1:0] reg_xpb_high_sum[NUM_ELEMENTS];

    reduction_high #(.NUM_ELEMENTS(NUM_ELEMENTS), .BIT_LEN(BIT_LEN), .WORD_LEN(WORD_LEN))
        u_reduction_high(.S_h(reg_S_h), .xpb_high_sum(u_xpb_high_sum));

    always_ff@(posedge clk)begin
        reg_xpb_high_sum <= u_xpb_high_sum;
    end

    

    reduction_low #(.NUM_ELEMENTS(NUM_ELEMENTS), .BIT_LEN(BIT_LEN), .WORD_LEN(WORD_LEN))
        u_reduction_low(.S_l(reg_S_l), .xpb_high_sum(reg_xpb_high_sum), .mid_sum(u_mid_sum));
    

    		

    

endmodule




module reduction_low
#(
    parameter NUM_ELEMENTS          = 65,
    parameter BIT_LEN               = 17,
    parameter WORD_LEN              = 16,
    parameter NUM_FLAG              = NUM_ELEMENTS+2-64

)
(
    input logic [BIT_LEN-1:0] S_l[NUM_ELEMENTS+2],
    input logic [BIT_LEN-1:0] xpb_high_sum[NUM_ELEMENTS],

    output logic [BIT_LEN-1:0] mid_sum[NUM_ELEMENTS]
);

    logic [NUM_ELEMENTS-2:0][WORD_LEN-1:0] xpb_low[NUM_FLAG*3];
    logic [BIT_LEN-1:0] xpb_low_flag[NUM_FLAG];

    always_comb begin
            xpb_low_flag[0] = S_l[NUM_ELEMENTS-1] + xpb_high_sum[NUM_ELEMENTS-1];
        for(int i=1; i<NUM_FLAG; i++)begin
            xpb_low_flag[i] = S_l[NUM_ELEMENTS-1+i];
        end
    end
    

    xpb_lut_low u_xpb_lut_low(.flag(xpb_low_flag), .xpb(xpb_low));


    localparam EXTRA_BIT_XPB_L = $clog2(NUM_FLAG*3+2);

    logic [EXTRA_BIT_XPB_L+BIT_LEN-1:0] xpb_low_temp0[NUM_ELEMENTS-1];

    always_comb begin
        for(int i=0; i<NUM_ELEMENTS-1; i++)begin
            xpb_low_temp0[i] = { {(EXTRA_BIT_XPB_L-1){1'b0}},S_l[i]} + { {(EXTRA_BIT_XPB_L){1'b0}}, xpb_high_sum[i]};
            for(int j=0; j < NUM_FLAG*3; j++)begin
                xpb_low_temp0[i] = xpb_low_temp0[i] + { {(EXTRA_BIT_XPB_L){1'b0}}, xpb_low[j][i]};
            end
        end
    end

    logic [BIT_LEN-1:0] xpb_low_temp1[NUM_ELEMENTS];

    always_comb begin
        xpb_low_temp1[0] = {{(BIT_LEN-WORD_LEN){1'b0}},xpb_low_temp0[0][WORD_LEN-1:0]};
        xpb_low_temp1[NUM_ELEMENTS-1] = xpb_low_temp0[NUM_ELEMENTS-2][EXTRA_BIT_XPB_L+BIT_LEN-1:WORD_LEN];
        for(int i=1; i<NUM_ELEMENTS-1; i++)begin
            xpb_low_temp1[i] = xpb_low_temp0[i-1][EXTRA_BIT_XPB_L+BIT_LEN-1:WORD_LEN] + xpb_low_temp0[i][WORD_LEN-1:0];
        end
    end

    always_comb begin
        mid_sum = xpb_low_temp1;
    end


endmodule





module reduction_high
#(
    parameter NUM_ELEMENTS          = 65,
    parameter BIT_LEN               = 17,
    parameter WORD_LEN              = 16
)
(
    input logic [BIT_LEN-1:0] S_h[NUM_ELEMENTS+1],

    output logic [BIT_LEN-1:0] xpb_high_sum[NUM_ELEMENTS]
);

    logic [NUM_ELEMENTS-2:0][WORD_LEN-1:0] xpb_high[(NUM_ELEMENTS+1)*3];

    xpb_lut_high u_xpb_lut_high(.flag(S_h), .xpb(xpb_high));


    localparam EXTRA_BIT_XPB_H = $clog2((NUM_ELEMENTS+1)*3);

    logic [EXTRA_BIT_XPB_H+WORD_LEN-1:0] grid_xpb_high[NUM_ELEMENTS-1][(NUM_ELEMENTS+1)*3];

    always_comb begin
        for(int i=0; i <NUM_ELEMENTS; i++)begin
            for(int j=0; j<(NUM_ELEMENTS+1)*3; j++)begin
                grid_xpb_high[i][j] = xpb_high[j][i];
            end
        end
    end

    logic [EXTRA_BIT_XPB_H+WORD_LEN-1:0] xpb_high_temp0[NUM_ELEMENTS-1];
    
    always_comb begin
        for(int i=0; i<NUM_ELEMENTS-1; i++)begin
            xpb_high_temp0[i] = { {(EXTRA_BIT_XPB_H){1'b0}},xpb_high[0][i]};
            for(int j=1; j < (NUM_ELEMENTS+1)*3; j++)begin
                xpb_high_temp0[i] = xpb_high_temp0[i] + { {(EXTRA_BIT_XPB_H){1'b0}}, xpb_high[j][i]};
            end
        end
    end

    logic [BIT_LEN-1:0] xpb_high_temp1[NUM_ELEMENTS];

    always_comb begin
        xpb_high_temp1[0] = {{(BIT_LEN-WORD_LEN){1'b0}},xpb_high_temp0[0][WORD_LEN-1:0]};
        xpb_high_temp1[NUM_ELEMENTS-1] = {{(BIT_LEN-EXTRA_BIT_XPB_H){1'b0}},xpb_high_temp0[NUM_ELEMENTS-2][EXTRA_BIT_XPB_H+WORD_LEN-1:WORD_LEN]};
        for(int i=1; i<NUM_ELEMENTS-1; i++)begin
            xpb_high_temp1[i] = xpb_high_temp0[i-1][EXTRA_BIT_XPB_H+WORD_LEN-1:WORD_LEN] + xpb_high_temp0[i][WORD_LEN-1:0];
        end
    end

    always_comb begin
        xpb_high_sum = xpb_high_temp1;
    end


endmodule


module alu_array
#(
    parameter NUM_ELEMENTS          = 66,
    parameter BIT_LEN               = 17,
    parameter WORD_LEN              = 16,
    parameter EXTRA_BITS            = $clog2(NUM_ELEMENTS),
    parameter ALU_OUT               = EXTRA_BITS+BIT_LEN*2,
    parameter NUM_MULS              = integer'(NUM_ELEMENTS/2) + (NUM_ELEMENTS%2)
)
(
    input logic [BIT_LEN-1:0] sq_in[NUM_ELEMENTS],
    input logic flag_h,

    output logic [BIT_LEN-1:0] S_h[NUM_ELEMENTS+1],
    output logic [BIT_LEN-1:0] S_l[NUM_ELEMENTS+2]
);

    
    logic [BIT_LEN-1:0] A_high[NUM_ELEMENTS][NUM_MULS];
    logic [BIT_LEN-1:0] B_high[NUM_ELEMENTS][NUM_MULS];
    logic [ALU_OUT-1:0] S_high[NUM_ELEMENTS-1];

    logic [BIT_LEN-1:0] A_low[NUM_ELEMENTS][NUM_MULS];
    logic [BIT_LEN-1:0] B_low[NUM_ELEMENTS][NUM_MULS];
    logic [ALU_OUT-1:0] S_low[NUM_ELEMENTS];
    

    genvar i,j;
    generate
        for(i=0; i< NUM_ELEMENTS-1; i++)begin
            localparam NUM_RESULTS_H = integer'((i+1)/2) + ((i+1)%2);
            sel_high #(.NUM_ELEMENTS(NUM_ELEMENTS), .COL_INDEX(i), .NUM_VALID(NUM_RESULTS_H), .NUM_OUT(NUM_MULS), .BIT_LEN(BIT_LEN)) 
            u_sel_high(.sq_in(sq_in), .A_high(A_high[i]), .B_high(B_high[i]));
        end

        for(j=0; j< NUM_ELEMENTS; j++)begin
            localparam NUM_RESULTS_L = integer'((j+1)/2) + ((j+1)%2);
            sel_low #(.NUM_ELEMENTS(NUM_ELEMENTS), .COL_INDEX(j), .NUM_VALID(NUM_RESULTS_L), .NUM_OUT(NUM_MULS), .BIT_LEN(BIT_LEN)) 
            u_sel_low(.sq_in(sq_in), .A_low(A_low[j]), .B_low(B_low[j]));
        end
    endgenerate

    

    logic [BIT_LEN-1:0] u_alu_A[NUM_ELEMENTS][NUM_MULS];
    logic [BIT_LEN-1:0] u_alu_B[NUM_ELEMENTS][NUM_MULS];
    logic [ALU_OUT-1:0] u_alu_S[NUM_ELEMENTS];

    always_comb begin
        u_alu_A = flag_h? A_high: A_low;
        u_alu_B = flag_h? B_high: B_low;
    end

    genvar k;
    generate
        for(k=0; k < NUM_ELEMENTS; k++)begin
            localparam NUM_RESULTS = integer'((k+1)/2) + ((k+1)%2);
            alu_col #(.NUM_ELEMENTS(NUM_ELEMENTS),.BIT_LEN(BIT_LEN), .WORD_LEN(WORD_LEN), .NUM_IN(k+1))
                u_alu_col (.A(u_alu_A[k][0:NUM_RESULTS-1]),.B(u_alu_B[k][0:NUM_RESULTS-1]),.S(u_alu_S[k]));
        end
    endgenerate
    

    always_comb begin
        S_low = u_alu_S;
        for(int i=1; i<NUM_ELEMENTS; i++)begin
            S_high[i-1] = u_alu_S[NUM_ELEMENTS-1-i];
        end
    end

    localparam TEMP0 = ALU_OUT - WORD_LEN + 1;

    logic [TEMP0-1:0] S_high_temp0[NUM_ELEMENTS];
    logic [TEMP0-1:0] S_low_temp0[NUM_ELEMENTS+1];

    always_comb begin
        S_high_temp0[0] = {{(TEMP0-WORD_LEN){1'b0}}, S_high[0][WORD_LEN-1:0]};
        S_high_temp0[NUM_ELEMENTS-1] = {{1{1'b0}}, S_high[NUM_ELEMENTS-2][ALU_OUT-1:WORD_LEN]};
        for(int i = 1; i<NUM_ELEMENTS-1; i++)begin
            S_high_temp0[i] = S_high[i-1][ALU_OUT-1:WORD_LEN] + S_high[i][WORD_LEN-1:0];
        end

        S_low_temp0[0] = {{(TEMP0-WORD_LEN){1'b0}}, S_low[0][WORD_LEN-1:0]};
        S_low_temp0[NUM_ELEMENTS] = {{1{1'b0}}, S_low[NUM_ELEMENTS-1][ALU_OUT-1:WORD_LEN]};
        for(int i = 1; i<NUM_ELEMENTS; i++)begin
            S_low_temp0[i] = S_low[i-1][ALU_OUT-1:WORD_LEN] + S_low[i][WORD_LEN-1:0];
        end
    end



    logic [BIT_LEN-1:0] S_high_temp1[NUM_ELEMENTS+1];
    logic [BIT_LEN-1:0] S_low_temp1[NUM_ELEMENTS+2];

    always_comb begin
        S_high_temp1[0] = {{(BIT_LEN-WORD_LEN){1'b0}}, S_high_temp0[0][WORD_LEN-1:0]};
        S_high_temp1[NUM_ELEMENTS] = {{(BIT_LEN-TEMP0+WORD_LEN){1'b0}}, S_high_temp0[NUM_ELEMENTS-1][TEMP0-1:WORD_LEN]};
        for(int i = 1; i<NUM_ELEMENTS; i++)begin
            S_high_temp1[i] = S_high_temp0[i-1][TEMP0-1:WORD_LEN] + S_high_temp0[i][WORD_LEN-1:0];
        end

        S_low_temp1[0] = {{(TEMP0-WORD_LEN){1'b0}}, S_low_temp0[0][WORD_LEN-1:0]};
        S_low_temp1[NUM_ELEMENTS+1] = {{(BIT_LEN-TEMP0+WORD_LEN){1'b0}}, S_low_temp0[NUM_ELEMENTS][TEMP0-1:WORD_LEN]};
        for(int i = 1; i<NUM_ELEMENTS+1; i++)begin
            S_low_temp1[i] = S_low_temp0[i-1][TEMP0-1:WORD_LEN] + S_low_temp0[i][WORD_LEN-1:0];
        end
    end


    always_comb begin
        S_h = S_high_temp1;
        S_l = S_low_temp1;
    end

endmodule


module sel_low
#(
    parameter NUM_ELEMENTS          = 66,
    parameter COL_INDEX             = 0,
    parameter NUM_VALID             = 1,
    parameter NUM_OUT               = 1,
    parameter BIT_LEN               = 17
)
(
    input logic [BIT_LEN-1:0] sq_in[NUM_ELEMENTS],

    output logic [BIT_LEN-1:0] A_low[NUM_OUT],
    output logic [BIT_LEN-1:0] B_low[NUM_OUT]
);

    always_comb begin
        for(int i=0; i<NUM_OUT; i++)begin
            if(i < NUM_VALID)begin
                A_low[i] = sq_in[COL_INDEX-i];
                B_low[i] = sq_in[i];
            end
            else begin
                A_low[i] = 0;
                B_low[i] = 0;
            end
            
        end
    end

endmodule

module sel_high
#(
    parameter NUM_ELEMENTS          = 65,
    parameter COL_INDEX             = 0,
    parameter NUM_VALID             = 1,
    parameter NUM_OUT               = 1,
    parameter BIT_LEN               = 17
)
(
    input logic [BIT_LEN-1:0] sq_in[NUM_ELEMENTS],

    output logic [BIT_LEN-1:0] A_high[NUM_OUT],
    output logic [BIT_LEN-1:0] B_high[NUM_OUT]
);

    always_comb begin
        for(int i=0; i<NUM_OUT; i++)begin
            if (i < NUM_VALID) begin
                A_high[i] = sq_in[NUM_ELEMENTS-i-1];
                B_high[i] = sq_in[NUM_ELEMENTS-COL_INDEX+i-1];
            end
            else begin
                A_high[i] = 0;
                B_high[i] = 0;
            end
            
        end
    end

endmodule





module alu_col
#(
    parameter NUM_ELEMENTS          = 66,
    parameter BIT_LEN               = 17,
    parameter WORD_LEN              = 16,
    parameter NUM_IN                = 66,
    parameter EXTRA_BITS            = $clog2(NUM_ELEMENTS),
    parameter NUM_MULS              = integer'(NUM_IN/2) + (NUM_IN%2)
)
(
    input logic [BIT_LEN-1:0] A[NUM_MULS],
    input logic [BIT_LEN-1:0] B[NUM_MULS],

    output logic [BIT_LEN*2 + EXTRA_BITS-1:0] S
);

    localparam REP_INDEX = NUM_MULS-1;
    logic [BIT_LEN*2-1:0] pp[NUM_MULS];

    genvar i;
    generate
        for(i=0; i<NUM_MULS; i++)begin:multiplier_col
            dsp_multiplier #(.BIT_LEN_A(BIT_LEN), .BIT_LEN_B(BIT_LEN))
                u_dsp_multiplier
                (
                    .A(A[i]), .B(B[i]), .P(pp[i])
                );
        end
    endgenerate

    logic [BIT_LEN*2 + EXTRA_BITS - 1:0] pp_grid[NUM_IN];

    always_comb begin
        if(NUM_IN == 1)begin
            pp_grid[0] = pp[0];
        end
        else if(NUM_IN % 2 == 0)begin
            for(int j=0; j<NUM_MULS; j++)begin:pp_grid_pad0
                pp_grid[j*2]   = {{(EXTRA_BITS){1'b0}}, pp[j]};
                pp_grid[j*2+1] = {{(EXTRA_BITS){1'b0}}, pp[j]};
            end
        end
        else begin
            for(int j=0; j<NUM_MULS; j++)begin:pp_grid_pad1
                if(j == NUM_MULS-1)begin
                    pp_grid[j*2] = {{(EXTRA_BITS){1'b0}}, pp[j]};
                end
                else begin
                    pp_grid[j*2]   = {{(EXTRA_BITS){1'b0}}, pp[j]};
                    pp_grid[j*2+1] = {{(EXTRA_BITS){1'b0}}, pp[j]};
                end
            end
            
        end      
    end

    logic [BIT_LEN*2 + EXTRA_BITS - 1:0] pp_sum;

    //always_comb begin
    //    pp_sum = pp_grid[0];
    //    for(int i=1; i< NUM_IN; i++)begin
    //        pp_sum = pp_sum + pp_grid[i];
    //    end
    //end
    adder_tree_2_to_1 #(.NUM_ELEMENTS(NUM_IN),
                        .BIT_LEN(BIT_LEN*2 + EXTRA_BITS))
        adder_tree_2_to_1 
            (
                .terms(pp_grid),
                .S(pp_sum)
            );

    assign S = pp_sum;

endmodule


(* use_dsp="yes" *)
module dsp_multiplier
   #(
    parameter BIT_LEN_A       = 26,
    parameter BIT_LEN_B       = 17,
    parameter MUL_OUT_BIT_LEN = BIT_LEN_A + BIT_LEN_B
    )
   (
    input  logic [BIT_LEN_A-1:0]       A,
    input  logic [BIT_LEN_B-1:0]       B,
    output logic [MUL_OUT_BIT_LEN-1:0] P
   );

    always_comb begin
        P[MUL_OUT_BIT_LEN-1:0] = A[BIT_LEN_A-1:0] * B[BIT_LEN_B-1:0];
    end
endmodule


(* use_dsp="no" *)
module adder_tree_2_to_1
   #(
     parameter int NUM_ELEMENTS      = 9,
     parameter int BIT_LEN           = 16
    )
   (
    input  logic [BIT_LEN-1:0] terms[NUM_ELEMENTS],
    output logic [BIT_LEN-1:0] S
   );


    generate
        if (NUM_ELEMENTS == 1) begin // Return value
            always_comb begin
               S[BIT_LEN-1:0] = terms[0];
            end
        end else if (NUM_ELEMENTS == 2) begin // Return value
            always_comb begin
               S[BIT_LEN-1:0] = terms[0] + terms[1];
            end
        end else begin
            localparam integer NUM_RESULTS = integer'(NUM_ELEMENTS/2) + (NUM_ELEMENTS%2);
            logic [BIT_LEN-1:0] next_level_terms[NUM_RESULTS];

            adder_tree_level #(.NUM_ELEMENTS(NUM_ELEMENTS),
                              .BIT_LEN(BIT_LEN)
            ) adder_tree_level (
                               .terms(terms),
                               .results(next_level_terms)
            );

            adder_tree_2_to_1 #(.NUM_ELEMENTS(NUM_RESULTS),
                                     .BIT_LEN(BIT_LEN)
            ) adder_tree_2_to_1 (
                                     .terms(next_level_terms),
                                     .S(S)
            );
        end
    endgenerate
endmodule


module adder_tree_level
   #(
     parameter int NUM_ELEMENTS = 3,
     parameter int BIT_LEN      = 19,

     parameter int NUM_RESULTS  = integer'(NUM_ELEMENTS/2) + (NUM_ELEMENTS%2)
    )
   (
    input  logic [BIT_LEN-1:0] terms[NUM_ELEMENTS],
    output logic [BIT_LEN-1:0] results[NUM_RESULTS]
   );

   always_comb begin
      for (int i=0; i<(NUM_ELEMENTS / 2); i++) begin
         results[i] = terms[i*2] + terms[i*2+1];
      end

      if( NUM_ELEMENTS % 2 == 1 ) begin
         results[NUM_RESULTS-1] = terms[NUM_ELEMENTS-1];
      end
   end
endmodule
