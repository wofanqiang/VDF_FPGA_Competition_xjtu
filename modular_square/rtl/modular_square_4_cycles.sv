module modular_square_4_cycles
#(
    parameter NUM_ELEMENTS          = 64,
    parameter WORD_LEN              = 16
)
(
    input clk,
    input reset,
    input start,
    input logic [WORD_LEN-1:0] sq_in[NUM_ELEMENTS],
    output logic valid,
    output logic [WORD_LEN-1:0] sq_out[NUM_ELEMENTS]
);

    localparam longint LOOPS = 2**33;

    localparam IDLE         = 7'b0000001;
    localparam TRANS_DATA   = 7'b0000010;
    localparam CALCULATE0   = 7'b0000100;
    localparam CALCULATE1   = 7'b0001000;
    localparam CALCULATE2   = 7'b0010000;
    localparam CALCULATE3   = 7'b0100000;
    localparam FINISH       = 7'b1000000;
							
	

    logic [33:0] counter;
    logic reg_start;
    logic reg_valid;

    logic [WORD_LEN-1:0] sq_in_current[NUM_ELEMENTS];
    logic [WORD_LEN-1:0] sq_out_reg[NUM_ELEMENTS];	

    logic [6:0] state_current;
    logic [6:0] state_next;

    logic [WORD_LEN-1:0] u_mid_sum[NUM_ELEMENTS];


    localparam FINAL_XPB_0 = 3;
    localparam EXTRA_BIT_XPB_0 = $clog2(FINAL_XPB_0+1);

    logic [NUM_ELEMENTS*WORD_LEN-1:0] S_h;
    logic [NUM_ELEMENTS*WORD_LEN:0] S_l;
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0] ms;


    always_comb begin
        for(int i=0; i<NUM_ELEMENTS; i++)begin
            u_mid_sum[i] = ms[i];
        end
    end

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
                state_next <= CALCULATE2;
            end
        CALCULATE2:
            begin 
                state_next <= CALCULATE3;
            end
        CALCULATE3:
            begin 
                if(counter < LOOPS+1) state_next <= CALCULATE0;
                else state_next <= FINISH;
            end
        FINISH: 
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
            end

        TRANS_DATA: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_out_reg  <= sq_in;
            end
        
        CALCULATE0: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_out_reg  <= sq_out_reg;
            end

        CALCULATE1: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_out_reg  <= sq_out_reg;
            end

        CALCULATE2: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_out_reg  <= sq_out_reg;
            end    

        CALCULATE3:
            begin 
                counter     <= counter + 1'b1;
                reg_start   <= reg_start;
                reg_valid   <= 1'b1;
                sq_out_reg  <= u_mid_sum;
            end

        FINISH: 
            begin
                counter     <= counter;
                reg_start   <= 1'b0;
                reg_valid   <= reg_valid;
                sq_out_reg  <= sq_out_reg;
            end

        default: 
            begin
                counter     <= 32'b0;
                reg_start   <= start;
                reg_valid   <= 1'b0;
                sq_out_reg  <= sq_in;
            end
        endcase
    end

    

    squaring #(.NUM_ELEMENTS(NUM_ELEMENTS), .WORD_LEN(WORD_LEN))
        u_squaring (.clk(clk), .sq_in(sq_out_reg), .S_h(S_h), .S_l(S_l));

    reduction #(.NUM_ELEMENTS(NUM_ELEMENTS), .WORD_LEN(WORD_LEN))
        u_reduction(.clk(clk), .S_h(S_h), .S_l(S_l), .ms(ms));

endmodule





module reduction
#(
    parameter NUM_ELEMENTS          = 64,
    parameter WORD_LEN              = 16
)
(
    input logic clk,
    input logic [NUM_ELEMENTS*WORD_LEN-1:0] S_h,
    input logic [NUM_ELEMENTS*WORD_LEN:0] S_l,

    output logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0] ms
);

    localparam PB = 1024'd55702617802106849374131591674088040617099270768494973145298226092755780468191824222693406107749861711676964472413899923079725927973196287937687305623143083444077218855294267938671980409728888398142885343697765922473789832121566108508934540857597787896530607270469240209840717864551083287716666502998629652885;
    localparam P1 = 1026'd124066695684124741398798927404814432744698427125735684128131855064976895337309138910015071214657674309443149407457493434579063840841220334555160125016331040933690674569571217337630239191517205721310197608387239846364360850220896772964978569683229449266819903414117058030106528073928633017118689826625594484331;
    localparam P2 = 1026'd248133391368249482797597854809628865489396854251471368256263710129953790674618277820030142429315348618886298814914986869158127681682440669110320250032662081867381349139142434675260478383034411442620395216774479692728721700441793545929957139366458898533639806828234116060213056147857266034237379653251188968662;
    localparam P3 = 1026'd372200087052374224196396782214443298234095281377207052384395565194930686011927416730045213643973022928329448222372480303737191522523661003665480375048993122801072023708713652012890717574551617163930592825161719539093082550662690318894935709049688347800459710242351174090319584221785899051356069479876783452993;
    localparam P4 = 1026'd496266782736498965595195709619257730978793708502942736512527420259907581349236555640060284858630697237772597629829973738316255363364881338220640500065324163734762698278284869350520956766068822885240790433548959385457443400883587091859914278732917797067279613656468232120426112295714532068474759306502377937324;
    localparam P5 = 1026'd620333478420623706993994637024072163723492135628678420640659275324884476686545694550075356073288371547215747037287467172895319204206101672775800625081655204668453372847856086688151195957586028606550988041936199231821804251104483864824892848416147246334099517070585290150532640369643165085593449133127972421655;

    

    localparam XPB_HIGH = ( (NUM_ELEMENTS*WORD_LEN)%6 == 0) ?  (NUM_ELEMENTS*WORD_LEN)/6 : (NUM_ELEMENTS*WORD_LEN)/6 + 1;

    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0] xpb_high[XPB_HIGH];
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0] S_l_temp0;
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0] S_l_temp1;
    logic [XPB_HIGH-1:0][5:0] xpb_flag_temp0;
    logic [5:0] xpb_flag_high[XPB_HIGH];

    always_comb begin
        xpb_flag_temp0 = {(XPB_HIGH*6){1'b0}};
        xpb_flag_temp0 = S_h;
    end

    always_comb begin
        for(int i=0; i<XPB_HIGH; i++)begin
            xpb_flag_high[i] = xpb_flag_temp0[i];
        end
    end

    always_comb begin
        S_l_temp0 = S_l[NUM_ELEMENTS*WORD_LEN-1:0];
        S_l_temp1 = S_l[NUM_ELEMENTS*WORD_LEN] ? PB : 1024'd0;
    end

    xpb_lut_high u_xpb_lut_high(.flag(xpb_flag_high), .xpb(xpb_high));


    localparam EXTRA_BIT_XPB_H = $clog2(XPB_HIGH+2);


    logic [EXTRA_BIT_XPB_H+WORD_LEN-1:0] grid_xpb[NUM_ELEMENTS][XPB_HIGH+2];
    
    always_comb begin
        for(int c=0; c<NUM_ELEMENTS; c++)begin
            for(int r=0; r<XPB_HIGH+2; r++)begin
                grid_xpb[c][r] = 0;
            end
        end

        for(int c=0; c<NUM_ELEMENTS; c++)begin
            grid_xpb[c][0] = S_l_temp0[c];
            grid_xpb[c][1] = S_l_temp1[c];
            for(int r=0; r<XPB_HIGH; r++)begin
                grid_xpb[c][r+2] = xpb_high[r][c];
            end
        end

    end

    logic [WORD_LEN+EXTRA_BIT_XPB_H-1:0] xpb_sum_temp0[NUM_ELEMENTS];

    always_comb begin
        for(int i=0; i<NUM_ELEMENTS; i++)begin
            xpb_sum_temp0[i] = 0;
            for(int j=0; j<XPB_HIGH+2; j++)begin
                xpb_sum_temp0[i] += grid_xpb[i][j];
            end
        end
    end

    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0] xpb_sum_temp1;
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0] xpb_sum_temp2;
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0] xpb_sum_temp3;

    always_ff@(posedge clk) begin
        for(int i=0; i<NUM_ELEMENTS; i++)begin
            xpb_sum_temp1[i] <= xpb_sum_temp0[i][WORD_LEN-1:0];
            xpb_sum_temp2[i] <= xpb_sum_temp0[i][WORD_LEN+EXTRA_BIT_XPB_H-1:WORD_LEN];
        end
    end

    always_comb begin
        xpb_sum_temp3 = (xpb_sum_temp2<<WORD_LEN);
    end

    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0] xpb_low;
    logic [7:0] xpb_low_flag;

    always_comb begin
        xpb_low_flag = xpb_sum_temp2[NUM_ELEMENTS-1][7:0];
    end
    
    xpb_lut_low u_xpb_lut_low(.flag(xpb_low_flag), .xpb(xpb_low));

    logic [NUM_ELEMENTS:0][WORD_LEN-1:0]mid_sum[6];

    always_comb begin
        mid_sum[0] = xpb_sum_temp1 + xpb_sum_temp3 + xpb_low;
        mid_sum[1] = xpb_sum_temp1 + xpb_sum_temp3 + xpb_low -P1;
        mid_sum[2] = xpb_sum_temp1 + xpb_sum_temp3 + xpb_low -P2;
        mid_sum[3] = xpb_sum_temp1 + xpb_sum_temp3 + xpb_low -P3;
        mid_sum[4] = xpb_sum_temp1 + xpb_sum_temp3 + xpb_low -P4;
        mid_sum[5] = xpb_sum_temp1 + xpb_sum_temp3 + xpb_low -P5;
    end

    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0]ms_temp;

    always_comb begin
        if(mid_sum[1][NUM_ELEMENTS][3] == 1)begin
            for(int i=0; i<NUM_ELEMENTS; i++)begin
                ms_temp[i] = mid_sum[0][i];
            end
        end
        else if(mid_sum[2][NUM_ELEMENTS][3] == 1)begin
            for(int i=0; i<NUM_ELEMENTS; i++)begin
                ms_temp[i] = mid_sum[1][i];
            end
        end
        else if(mid_sum[3][NUM_ELEMENTS][3] == 1)begin
            for(int i=0; i<NUM_ELEMENTS; i++)begin
                ms_temp[i] = mid_sum[2][i];
            end
        end
        else if(mid_sum[4][NUM_ELEMENTS][3] == 1)begin
            for(int i=0; i<NUM_ELEMENTS; i++)begin
                ms_temp[i] = mid_sum[3][i];
            end
        end
        else if(mid_sum[5][NUM_ELEMENTS][3] == 1)begin
            for(int i=0; i<NUM_ELEMENTS; i++)begin
                ms_temp[i] = mid_sum[4][i];
            end
        end
        else begin
            for(int i=0; i<NUM_ELEMENTS; i++)begin
                ms_temp[i] = mid_sum[5][i];
            end
        end
    end

    always_comb begin
        ms =  ms_temp;
    end


endmodule



module squaring
#(
    parameter NUM_ELEMENTS          = 64,
    parameter WORD_LEN              = 16,
    parameter EXTRA_BITS            = $clog2(NUM_ELEMENTS),
    parameter NUM_MULS              = integer'(NUM_ELEMENTS/2) + (NUM_ELEMENTS%2)
)
(
    input logic clk,
    input logic [WORD_LEN-1:0] sq_in[NUM_ELEMENTS],
    output logic [NUM_ELEMENTS*WORD_LEN-1:0] S_h,
    output logic [NUM_ELEMENTS*WORD_LEN:0] S_l
);

    
    logic [WORD_LEN-1:0] A_high[NUM_ELEMENTS][NUM_MULS];
    logic [WORD_LEN-1:0] B_high[NUM_ELEMENTS][NUM_MULS];
    

    logic [WORD_LEN-1:0] A_low[NUM_ELEMENTS][NUM_MULS];
    logic [WORD_LEN-1:0] B_low[NUM_ELEMENTS][NUM_MULS];

    genvar i,j;
    generate
        for(i=0; i< NUM_ELEMENTS-1; i++)begin
            localparam NUM_RESULTS_H = integer'((i+1)/2) + ((i+1)%2);
            sel_high #(.NUM_ELEMENTS(NUM_ELEMENTS), .COL_INDEX(i), .NUM_VALID(NUM_RESULTS_H), .NUM_OUT(NUM_MULS), .WORD_LEN(WORD_LEN)) 
            u_sel_high(.sq_in(sq_in), .A_high(A_high[i]), .B_high(B_high[i]));
        end

        for(j=0; j< NUM_ELEMENTS; j++)begin
            localparam NUM_RESULTS_L = integer'((j+1)/2) + ((j+1)%2);
            sel_low #(.NUM_ELEMENTS(NUM_ELEMENTS), .COL_INDEX(j), .NUM_VALID(NUM_RESULTS_L), .NUM_OUT(NUM_MULS), .WORD_LEN(WORD_LEN)) 
            u_sel_low(.sq_in(sq_in), .A_low(A_low[j]), .B_low(B_low[j]));
        end
    endgenerate

    
    logic [WORD_LEN-1:0] u_alu_S_h0[NUM_ELEMENTS-1];
    logic [WORD_LEN-1:0] u_alu_S_h1[NUM_ELEMENTS-1];
    logic [WORD_LEN-1:0] u_alu_S_h2[NUM_ELEMENTS-1];
    logic [WORD_LEN-1:0] u_alu_S_l0[NUM_ELEMENTS];
    logic [WORD_LEN-1:0] u_alu_S_l1[NUM_ELEMENTS];
    logic [WORD_LEN-1:0] u_alu_S_l2[NUM_ELEMENTS];



    genvar h;
    generate
        for(h=0; h < NUM_ELEMENTS-1; h++)begin
            localparam NUM_RESULTS = integer'((h+1)/2) + ((h+1)%2);
            alu_col #(.NUM_ELEMENTS(NUM_ELEMENTS),.WORD_LEN(WORD_LEN), .NUM_IN(h+1))
                u_alu_col_h (
                    .A(A_high[h][0:NUM_RESULTS-1]),
                    .B(B_high[h][0:NUM_RESULTS-1]),
                    .S0(u_alu_S_h0[h]),
                    .S1(u_alu_S_h1[h]),
                    .S2(u_alu_S_h2[h]));
        end
    endgenerate


    genvar l;
    generate
        for(l=0; l < NUM_ELEMENTS; l++)begin
            localparam NUM_RESULTS = integer'((l+1)/2) + ((l+1)%2);
            alu_col #(.NUM_ELEMENTS(NUM_ELEMENTS),.WORD_LEN(WORD_LEN), .NUM_IN(l+1))
                u_alu_col_l (
                    .A(A_low[l][0:NUM_RESULTS-1]),
                    .B(B_low[l][0:NUM_RESULTS-1]),
                    .S0(u_alu_S_l0[l]),
                    .S1(u_alu_S_l1[l]),
                    .S2(u_alu_S_l2[l]));
        end
    endgenerate
    
    logic [WORD_LEN-1:0] S_low0[NUM_ELEMENTS];
    logic [WORD_LEN-1:0] S_low1[NUM_ELEMENTS];
    logic [WORD_LEN-1:0] S_low2[NUM_ELEMENTS];
    logic [WORD_LEN-1:0] S_high0[NUM_ELEMENTS-1];
    logic [WORD_LEN-1:0] S_high1[NUM_ELEMENTS-1];
    logic [WORD_LEN-1:0] S_high2[NUM_ELEMENTS-1];

    always_ff@(posedge clk) begin
        S_low0 <= u_alu_S_l0;
        S_low1 <= u_alu_S_l1;
        S_low2 <= u_alu_S_l2;
        for(int i=0; i<NUM_ELEMENTS-1; i++)begin
            S_high0[i] <= u_alu_S_h0[NUM_ELEMENTS-2-i];
            S_high1[i] <= u_alu_S_h1[NUM_ELEMENTS-2-i];
            S_high2[i] <= u_alu_S_h2[NUM_ELEMENTS-2-i];
        end
    end

    logic [WORD_LEN+1:0] s_temp0[NUM_ELEMENTS*2];

    always_comb begin
        for(int i=0; i<NUM_ELEMENTS*2; i++)begin
            s_temp0[i] = 0;
        end

        s_temp0[0] = S_low0[0];
        s_temp0[1] = S_low1[0] + S_low0[1];
        for(int i=2; i<NUM_ELEMENTS; i++)begin
            s_temp0[i] = S_low0[i] + S_low1[i-1] + S_low2[i-2];
        end
        s_temp0[NUM_ELEMENTS] = S_high0[0] + S_low1[NUM_ELEMENTS-1] + S_low2[NUM_ELEMENTS-2];
        s_temp0[NUM_ELEMENTS+1] = S_high0[1] + S_high1[0] + S_low2[NUM_ELEMENTS-1];
        for(int i=NUM_ELEMENTS+2; i<NUM_ELEMENTS*2-1; i++)begin
            s_temp0[i] = S_high0[i-(NUM_ELEMENTS)] + S_high1[i-(NUM_ELEMENTS+1)] + S_high2[i-(NUM_ELEMENTS+2)];
        end
        s_temp0[NUM_ELEMENTS*2-1] = S_high1[NUM_ELEMENTS-2] + S_high2[NUM_ELEMENTS-3];
    end



    logic [NUM_ELEMENTS*2-1:0][WORD_LEN-1:0] s_temp1;
    logic [NUM_ELEMENTS*2-1:0][WORD_LEN-1:0] s_temp2;

    always_comb begin
        for(int i=0; i<NUM_ELEMENTS*2; i++)begin
            s_temp1[i] = 0;
            s_temp2[i] = 0;
        end
        for(int i=0; i<NUM_ELEMENTS*2; i++)begin
            s_temp1[i] = s_temp0[i][WORD_LEN-1:0];
            s_temp2[i] = s_temp0[i][WORD_LEN+1:WORD_LEN];
        end
    end

    logic [2*NUM_ELEMENTS*WORD_LEN-1:0] s_temp3;
    logic [2*NUM_ELEMENTS*WORD_LEN-1:0] s_temp4;

    always_comb begin
        s_temp3 = s_temp1;
        s_temp4 = s_temp2 << WORD_LEN;
    end

    logic [NUM_ELEMENTS*WORD_LEN-1:0] S_h_temp[2];
    logic [NUM_ELEMENTS*WORD_LEN-1:0] S_l_temp[2];

    always_comb begin
        S_h_temp[0] = s_temp3[2*NUM_ELEMENTS*WORD_LEN-1:NUM_ELEMENTS*WORD_LEN];
        S_h_temp[1] = s_temp4[2*NUM_ELEMENTS*WORD_LEN-1:NUM_ELEMENTS*WORD_LEN];
        S_l_temp[0] = s_temp3[NUM_ELEMENTS*WORD_LEN-1:0];
        S_l_temp[1] = s_temp4[NUM_ELEMENTS*WORD_LEN-1:0];
    end


    always_ff@(posedge clk) begin
        S_h <=  S_h_temp[0] + S_h_temp[1];
        S_l <=  S_l_temp[0] + S_l_temp[1];
    end

endmodule


module sel_low
#(
    parameter NUM_ELEMENTS          = 66,
    parameter COL_INDEX             = 0,
    parameter NUM_VALID             = 1,
    parameter NUM_OUT               = 1,
    parameter WORD_LEN               = 16
)
(
    input logic [WORD_LEN-1:0] sq_in[NUM_ELEMENTS],

    output logic [WORD_LEN-1:0] A_low[NUM_OUT],
    output logic [WORD_LEN-1:0] B_low[NUM_OUT]
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
    parameter WORD_LEN              = 16
)
(
    input logic [WORD_LEN-1:0] sq_in[NUM_ELEMENTS],

    output logic [WORD_LEN-1:0] A_high[NUM_OUT],
    output logic [WORD_LEN-1:0] B_high[NUM_OUT]
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
    parameter NUM_ELEMENTS          = 64,
    parameter WORD_LEN              = 16,
    parameter NUM_IN                = 64,
    parameter EXTRA_BITS            = $clog2(NUM_ELEMENTS),
    parameter NUM_MULS              = integer'(NUM_IN/2) + (NUM_IN%2)
)
(
    input logic [WORD_LEN-1:0] A[NUM_MULS],
    input logic [WORD_LEN-1:0] B[NUM_MULS],

    output logic [WORD_LEN-1:0] S0,
    output logic [WORD_LEN-1:0] S1,
    output logic [WORD_LEN-1:0] S2
);

    localparam REP_INDEX = NUM_MULS-1;
    logic [WORD_LEN*2-1:0] pp[NUM_MULS];

    genvar i;
    generate
        for(i=0; i<NUM_MULS; i++)begin:multiplier_col
            dsp_multiplier #(.BIT_LEN_A(WORD_LEN), .BIT_LEN_B(WORD_LEN))
                u_dsp_multiplier
                (
                    .A(A[i]), .B(B[i]), .P(pp[i])
                );
        end
    endgenerate

    logic [WORD_LEN*2 + EXTRA_BITS - 1:0] pp_grid[NUM_IN];

    always_comb begin
        if(NUM_IN == 1)begin
            pp_grid[0] = { {(EXTRA_BITS){1'b0}}, pp[0]};
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

    logic [WORD_LEN-1:0] pp_grid_0[NUM_IN];
    logic [WORD_LEN-1:0] pp_grid_1[NUM_IN];

    always_comb begin
        for(int i=0; i<NUM_IN; i++)begin
            pp_grid_0[i] = 0;
            pp_grid_1[i] = 0;
        end
        for(int i=0; i<NUM_IN; i++)begin
            pp_grid_0[i] = pp_grid[i][WORD_LEN-1:0];
            pp_grid_1[i] = pp_grid[i][2*WORD_LEN-1:WORD_LEN];
        end
    end
    
    logic [WORD_LEN+EXTRA_BITS-1:0] S0_temp0;
    logic [WORD_LEN+EXTRA_BITS-1:0] S1_temp0;

    always_comb begin
        S0_temp0 = 0;
        S1_temp0 = 0;
        for(int i = 0; i < NUM_IN; i++) begin
            S0_temp0 += pp_grid_0[i];
            S1_temp0 += pp_grid_1[i];
        end
    end
    logic [WORD_LEN*3-1:0] S_temp;

    always_comb begin
        S_temp = S0_temp0 + (S1_temp0<<16);
    end
    always_comb begin
        {S2, S1, S0} = S_temp;
    end
    

endmodule


(* use_dsp="yes" *)
module dsp_multiplier
   #(
    parameter BIT_LEN_A       = 16,
    parameter BIT_LEN_B       = 16,
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