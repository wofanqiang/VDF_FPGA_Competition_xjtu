module modular_square_2_cycle
#(
    parameter NUM_ELEMENTS          = 66,
    parameter BIT_LEN               = 17,
    parameter WORD_LEN              = 16
)
(
    input clk,
    input reset,
    input start,
    input logic [BIT_LEN-1:0] sq_in[NUM_ELEMENTS],
    output valid,
    output logic [BIT_LEN-1:0] sq_out[NUM_ELEMENTS]
);

localparam longint LOOPS = 2**33;

    localparam IDLE          = 10'b0000000001;
    localparam TRANS_DATA0   = 10'b0000000010;
    localparam TRANS_DATA1   = 10'b0000000100;
    localparam CALCULATE     = 10'b0000001000;
    localparam REDUCTION     = 10'b0000010000;
    localparam FINISH0       = 10'b0000100000;
    localparam FINISH1       = 10'b0001000000;
    localparam FINISH2       = 10'b0010000000;
    localparam FINISH3       = 10'b0100000000;
    localparam FINISH4       = 10'b1000000000;


    localparam XPB_SLICES   = 38;
    localparam NUM_FLAG_MUL = 58;
    localparam NUM_FLAG_LUT = 9;
    localparam BIT_LEN_XPB  = 27;
    localparam BIT_LEN_FLAG = 17;


    localparam P = 1024'd124066695684124741398798927404814432744698427125735684128131855064976895337309138910015071214657674309443149407457493434579063840841220334555160125016331040933690674569571217337630239191517205721310197608387239846364360850220896772964978569683229449266819903414117058030106528073928633017118689826625594484331;

    logic [33:0] counter;
    logic reg_start;
    logic reg_valid;

    //logic [BIT_LEN-1:0] sq_in_initial[NUM_ELEMENTS];
    logic [BIT_LEN-1:0] sq_in_current[NUM_ELEMENTS];
    logic [BIT_LEN-1:0] u_ms[NUM_ELEMENTS];
    logic [BIT_LEN-1:0] sq_out_reg[NUM_ELEMENTS];

    //(* max_fanout = 20 *) logic [9:0] state_current;
    //(* max_fanout = 20 *) logic [9:0] state_next;

    (* max_fanout = 50 *) logic EN_S;
    logic [9:0] state_current;
    logic [9:0] state_next;
    //logic EN_S;
    
    logic [BIT_LEN-1:0] S[NUM_ELEMENTS*2];
    

    localparam NUM_MUL       = 2211;
    localparam BIT_LEN_A     = 27;
    localparam BIT_LEN_B     = 17;
    localparam EXTRA_BIT     = 10;

    logic [BIT_LEN_A-1:0] mul_A[NUM_MUL];
    logic [BIT_LEN_B-1:0] mul_B[NUM_MUL];
    logic [BIT_LEN_A+BIT_LEN_B-1:0] mul_P[NUM_MUL];
    logic [BIT_LEN_A+BIT_LEN_B-1:0] u_mul_P[NUM_MUL];

    logic [BIT_LEN_A-1:0] mul_A_square[NUM_MUL];
    logic [BIT_LEN_B-1:0] mul_B_square[NUM_MUL];
    //logic [BIT_LEN_A+BIT_LEN_B-1:0] mul_P_square[NUM_MUL];
    logic [BIT_LEN*2-1:0] mul_P_square[NUM_ELEMENTS*NUM_ELEMENTS];
    
    logic [BIT_LEN-1:0] S_temp[NUM_ELEMENTS*2];


    logic [BIT_LEN_A-1:0] mul_A_xpb[NUM_MUL];
    logic [BIT_LEN_B-1:0] mul_B_xpb[NUM_MUL];
    //logic [BIT_LEN_A+BIT_LEN_B-1:0] mul_P_xpb[NUM_MUL];
    logic [XPB_SLICES-1:0][BIT_LEN_XPB+BIT_LEN_FLAG-1:0] mul_P_xpb[NUM_FLAG_MUL];
    
    logic finish_flag;

    
    assign valid = reg_valid;


    localparam EXTRA_BIT_XPB_1 = $clog2(6+1);

    logic [BIT_LEN-1:0] S_temp2[NUM_ELEMENTS];
    logic [BIT_LEN+EXTRA_BIT_XPB_1-1:0] u_S_temp2[NUM_ELEMENTS];
    logic [NUM_ELEMENTS-3:0][WORD_LEN-1:0] final_xpb0[6];

    xpb_lut_final u_xpb_lut_final0(.flag(sq_out_reg[NUM_ELEMENTS-2:NUM_ELEMENTS-1]), .xpb(final_xpb0));

    always_comb begin
        u_S_temp2[NUM_ELEMENTS-1] = 0;
        u_S_temp2[NUM_ELEMENTS-2] = 0;
        for(int i=0; i<NUM_ELEMENTS-2; i++)begin
            u_S_temp2[i] = sq_out_reg[i];
            for(int j=0; j < 6; j++)begin
                u_S_temp2[i] = u_S_temp2[i] + final_xpb0[j][i];
            end
        end
    end

    always_comb begin
        S_temp2[NUM_ELEMENTS-1] = 0;
        for (int i = 0; i < NUM_ELEMENTS-1; i++) begin
            if (i == 0) begin
                S_temp2[i] = u_S_temp2[i][WORD_LEN-1:0];
            end else begin
                S_temp2[i] = u_S_temp2[i][WORD_LEN-1:0] + u_S_temp2[i-1][WORD_LEN+EXTRA_BIT_XPB_1-1:WORD_LEN];
            end
        end
    end






    logic [NUM_ELEMENTS*WORD_LEN-1:0]my_ms[2];
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0]actual_ms_temp0;
    logic [BIT_LEN-1:0] actual_ms_temp1[NUM_ELEMENTS];
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0]actual_ms_temp2;
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0]actual_ms_temp3;
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0]actual_ms_temp3_reg0;
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0]actual_ms_temp3_reg1;
    logic [BIT_LEN-1:0] actual_ms_temp4[NUM_ELEMENTS];

    always_comb begin
        for (int i=0; i<NUM_ELEMENTS; i++) begin
            my_ms[0][i*WORD_LEN +: WORD_LEN] = sq_out_reg[i][WORD_LEN-1:0];
            my_ms[1][i*WORD_LEN +: WORD_LEN] = {{(WORD_LEN-1){1'b0}}, sq_out_reg[i][WORD_LEN]};
        end
    end

    assign actual_ms_temp0 = my_ms[0] + (my_ms[1]<<WORD_LEN);

    

    always_comb begin
        for (int i=0; i<NUM_ELEMENTS; i++) begin
            actual_ms_temp1[i] = {1'b0, actual_ms_temp0[i]};
        end
    end

    always_comb begin
        for (int i=0; i<NUM_ELEMENTS; i++) begin
            actual_ms_temp2[i] = sq_out_reg[i];
        end
    end

    assign actual_ms_temp3 = actual_ms_temp2 - P;

    assign finish_flag = actual_ms_temp3[NUM_ELEMENTS-2][2];

    always_ff@(posedge clk)begin
        actual_ms_temp3_reg0 <= actual_ms_temp3;
        actual_ms_temp3_reg1 <= actual_ms_temp3_reg0;
    end

    always_comb begin
        for (int i=0; i<NUM_ELEMENTS; i++) begin
            actual_ms_temp4[i] = {1'b0, actual_ms_temp3_reg0[i]};
        end
    end
    



    always_comb begin
        sq_in_current = sq_out_reg;
        sq_out = sq_out_reg;
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
                    state_next <= TRANS_DATA0;
                else
                    state_next <= IDLE;
            end

        TRANS_DATA0: 
            begin
                state_next <= TRANS_DATA1;
            end
        
        TRANS_DATA1: 
            begin
                state_next <= CALCULATE;
            end
        
        //TRANS_DATA2: 
        //    begin
        //        state_next <= TRANS_DATA3;
        //    end
        //
        //TRANS_DATA3: 
        //    begin
        //        state_next <= CALCULATE0;
        //    end

        //CALCULATE0:
        //    begin 
        //        state_next <= CALCULATE1;
        //    end
        
        CALCULATE:
            begin 
                state_next <= REDUCTION;
            end
        
        //REDUCTION0:
        //    begin 
        //        state_next <= REDUCTION1;
        //    end

        REDUCTION:
            begin 
                if(counter < LOOPS) state_next <= CALCULATE;
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
                state_next <= FINISH3;
            end
        FINISH3: 
            begin
                if(finish_flag == 1'b1)
                    state_next <= FINISH4;
                else
                    state_next <= FINISH3;
            end
        
        FINISH4: 
            begin
                state_next <= IDLE;
            end

        default: 
            begin
                state_next <= IDLE;
            end
        endcase
    end


    logic [BIT_LEN-1:0] sq_in_initial_0[NUM_ELEMENTS];
    logic [BIT_LEN-1:0] sq_in_initial_1[NUM_ELEMENTS];
    logic [BIT_LEN-1:0] sq_in_initial_2[NUM_ELEMENTS];


    always_ff@(posedge clk)begin
        case(state_next)
        IDLE: 
            begin
                counter     <= 32'b0;
                reg_start   <= start;
                reg_valid   <= 1'b0;
                sq_in_initial_0<=sq_in;
                sq_in_initial_1<=sq_in_initial_0;
                //sq_in_initial_2<=sq_in_initial_1;
                //sq_in_initial <= sq_in_initial_2;
                sq_out_reg      <= sq_in_initial_1;
                //sq_out      <= sq_out;
                EN_S        <= 1'b1;
                S           <= S;
                //for(int i=0; i<NUM_ELEMENTS*2; i++)begin:reset_S
                //    S[i] <= 0;
                //end
            end

        TRANS_DATA0: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_in_initial_0<=sq_in;
                sq_in_initial_1<=sq_in_initial_0;
                //sq_in_initial_2<=sq_in_initial_1;
                //sq_in_initial <= sq_in_initial_2;
                sq_out_reg      <= sq_in_initial_1;
                EN_S        <= 1'b1;
                S           <= S;
            end

        TRANS_DATA1: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_in_initial_0<=sq_in;
                sq_in_initial_1<=sq_in_initial_0;
                //sq_in_initial_2<=sq_in_initial_1;
                //sq_in_initial <= sq_in_initial_2;
                sq_out_reg      <= sq_in_initial_1;
                EN_S        <= 1'b1;
                S           <= S;
            end
//
        //TRANS_DATA2: 
        //    begin
        //        counter     <= counter;
        //        reg_start   <= reg_start;
        //        reg_valid   <= 1'b0;
        //        sq_in_initial_0<=sq_in;
        //        sq_in_initial_1<=sq_in_initial_0;
        //        sq_in_initial_2<=sq_in_initial_1;
        //        //sq_in_initial <= sq_in_initial_2;
        //        sq_out      <= sq_in_initial_2;
        //        EN_S        <= 1'b1;
        //        S           <= S_temp;
        //    end
//
        //TRANS_DATA3: 
        //    begin
        //        counter     <= counter;
        //        reg_start   <= reg_start;
        //        reg_valid   <= 1'b0;
        //        sq_in_initial_0<=sq_in;
        //        sq_in_initial_1<=sq_in_initial_0;
        //        sq_in_initial_2<=sq_in_initial_1;
        //        //sq_in_initial <= sq_in_initial_2;
        //        sq_out      <= sq_in;
        //        EN_S        <= 1'b1;
        //        S           <= S_temp;
        //    end

        CALCULATE:
            begin 
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_in_initial_0<=sq_in;
                sq_in_initial_1<=sq_in_initial_0;
                //sq_in_initial_2<=sq_in_initial_1;
                //sq_in_initial <= sq_in_initial_1;
                sq_out_reg      <= sq_out_reg;
                EN_S        <= 1'b0;
                S           <= S_temp;
            end
        
        //CALCULATE1:
        //    begin 
        //        //counter     <= counter;
        //        //reg_start   <= reg_start;
        //        //reg_valid   <= 1'b0;
        //        //sq_in_initial_0<=sq_in;
        //        //sq_in_initial_1<=sq_in_initial_0;
        //        //sq_in_initial_2<=sq_in_initial_1;
        //        ////sq_in_initial <= sq_in_initial_2;
        //        //sq_out      <= sq_out;
        //        //EN_S        <= 1'b0;
        //        S           <= S_temp;
        //    end
        
        //REDUCTION0:
        //    begin 
                //counter     <= counter;
                //reg_start   <= reg_start;
                //reg_valid   <= 1'b0;
                //sq_in_initial_0<=sq_in;
                //sq_in_initial_1<=sq_in_initial_0;
                //sq_in_initial_2<=sq_in_initial_1;
                //sq_in_initial <= sq_in_initial_2;
                //sq_out      <= sq_out;
        //        EN_S        <= 1'b0;
        //        S           <= S;
        //    end
        
        REDUCTION:
            begin 
                counter     <= counter + 1'b1;
                reg_start   <= reg_start;
                reg_valid   <= (counter < LOOPS-1)? 1'b1 : 1'b0;
                sq_in_initial_0<=sq_in;
                sq_in_initial_1<=sq_in_initial_0;
                //sq_in_initial_2<=sq_in_initial_1;
                //sq_in_initial <= sq_in_initial_2;
                sq_out_reg      <= u_ms;
                EN_S        <= 1'b1;
                S           <= S;
            end

        FINISH0: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_in_initial_0<=sq_in;
                sq_in_initial_1<=sq_in_initial_0;
                //sq_in_initial_2<=sq_in_initial_1;
                //sq_in_initial <= sq_in_initial_2;
                sq_out_reg      <= S_temp2;
                EN_S        <= 1'b1;
                S           <= S;
            end

        FINISH1: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_in_initial_0<=sq_in;
                sq_in_initial_1<=sq_in_initial_0;
                //sq_in_initial_2<=sq_in_initial_1;
                //sq_in_initial <= sq_in_initial_2;
                sq_out_reg      <= S_temp2;
                EN_S        <= 1'b1;
                S           <= S;
            end

        FINISH2: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_in_initial_0<=sq_in;
                sq_in_initial_1<=sq_in_initial_0;
                //sq_in_initial_2<=sq_in_initial_1;
                //sq_in_initial <= sq_in_initial_2;
                sq_out_reg      <= actual_ms_temp1;
                EN_S        <= 1'b1;
                S           <= S;
            end
        FINISH3: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                sq_in_initial_0<=sq_in;
                sq_in_initial_1<=sq_in_initial_0;
                //sq_in_initial_2<=sq_in_initial_1;
                //sq_in_initial <= sq_in_initial_2;
                sq_out_reg      <= actual_ms_temp4;
                EN_S        <= 1'b1;
                S           <= S;
            end
        
        FINISH4: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b1;
                sq_in_initial_0<=sq_in;
                sq_in_initial_1<=sq_in_initial_0;
                //sq_in_initial_2<=sq_in_initial_1;
                //sq_in_initial <= sq_in_initial_2;
                sq_out_reg      <= sq_out_reg;
                EN_S        <= 1'b1;
                S           <= S;
            end

        default: 
            begin
                counter     <= 32'b0;
                reg_start   <= start;
                reg_valid   <= 1'b0;
                sq_in_initial_0<=sq_in;
                sq_in_initial_1<=sq_in_initial_0;
                //sq_in_initial_2<=sq_in_initial_1;
                //sq_in_initial <= sq_in_initial_2;
                sq_out_reg      <= sq_in_initial_1;
                EN_S        <= 1'b1;
                for(int i=0; i<NUM_ELEMENTS*2; i++)begin:reset_S
                    S[i] <= 0;
                end
            end
        endcase
    end


    


//----------------------------------------------------------------------------
    genvar mul_i;
    generate
        for(mul_i=0; mul_i<NUM_MUL; mul_i++)begin:gen_mul_array
            multiplier #(.BIT_LEN_A(BIT_LEN_A), .BIT_LEN_B(BIT_LEN_B)) 
                u_multiplier(
                            .A(mul_A[mul_i]),
                            .B(mul_B[mul_i]),
                            //.P(u_mul_P[mul_i])
                            .P(mul_P[mul_i])
                            );
        end
    endgenerate

    //always_ff@(posedge clk)begin
    //    mul_P <= u_mul_P;
    //end

//----------------------------------------------------------------------------



//----------------------------------------------------------------------------
//设置乘法器输入
    always_comb begin
        for(int mul_i=0; mul_i<NUM_MUL; mul_i++)begin:assign_mul_input
            mul_A[mul_i] = EN_S? mul_A_square[mul_i] : mul_A_xpb[mul_i];
            mul_B[mul_i] = EN_S? mul_B_square[mul_i] : mul_B_xpb[mul_i];
        end
    end
//----------------------------------------------------------------------------




//----------------------------------------------------------------------------
    /*乘法器的序号从右到左递增，从上到下递增。
                                   a3a0(3)  a2a0(2)  a1a0(1)  a0a0(0)
                          a3a1(6)  a2a1(5)  a1a1(4)  a0a1
                 a3a2(8)  a2a2(7)  a1a2     a0a2
        a3a3(9)  a2a3     a1a3     a0a3
    */ 

    always_comb begin
        automatic int mul_i = 0;//乘法器索引(必须为'automatic',不然会出错)
        //用A的值对乘法器的输入赋值
        for(int i=0; i<NUM_ELEMENTS; i++)begin:square_input_array_A
            for(int j=i; j<NUM_ELEMENTS; j++)begin:square_input_array_B
                //如果乘法器位宽变化，此处需要修改
                mul_A_square[mul_i] = {{(BIT_LEN_A-BIT_LEN){1'b0}} , sq_in_current[i]};
                mul_B_square[mul_i] = sq_in_current[j];
                //保存用乘法器的输出
                mul_P_square[(NUM_ELEMENTS*i)+j] = mul_P[mul_i][BIT_LEN*2-1:0];
                mul_i = mul_i + 1;
                //else begin
                //    //保存重复项
                //    mul_P_square[i][j] = mul_P_square[j][i];
                //end
            end
        end
    end

    logic [25:0]     grid[NUM_ELEMENTS*2][NUM_ELEMENTS*2]; 

    //int ii, jj;
    always_comb begin
       for (int ii=0; ii<NUM_ELEMENTS*2; ii++) begin:gg0 // Y
          for (int jj=0; jj<NUM_ELEMENTS*2; jj++) begin :gg1// X
             grid[ii][jj] = 0;
          end
       end

       for (int ii=0; ii<NUM_ELEMENTS; ii++) begin : grid_row // Y
          for (int jj=ii; jj<NUM_ELEMENTS; jj++) begin : grid_col // X
             if( jj == ii ) begin // diagonal cases are used as is
                 grid[(ii+jj)][(2*ii)]       = {{EXTRA_BIT{ 1'b0}},       mul_P_square[(NUM_ELEMENTS*ii)+jj][WORD_LEN-1       :0       ]};
                 grid[(ii+jj+1)][((2*ii)+1)] = {{(EXTRA_BIT){1'b0}}, mul_P_square[(NUM_ELEMENTS*ii)+jj][(2*BIT_LEN)-1:WORD_LEN]};
             end else begin // all non diagonal cases are doubled
                 grid[(ii+jj)][(2*ii)]       = {{(EXTRA_BIT){ 1'b0}},       mul_P_square[(NUM_ELEMENTS*ii)+jj][WORD_LEN-2       :0         ], 1'b0};
                 grid[(ii+jj+1)][((2*ii)+1)] = {{(EXTRA_BIT-1){1'b0}},      mul_P_square[(NUM_ELEMENTS*ii)+jj][(2*BIT_LEN)-1:WORD_LEN-1]};
             end

          end
       end
    end

    logic [WORD_LEN+EXTRA_BIT-1:0]  mid_sum[NUM_ELEMENTS*2];

    genvar i;
    generate
      // The first and last columns have only one entry, return in S
        always_comb begin
          
          mid_sum[0][WORD_LEN + EXTRA_BIT-1:0]                  = grid[0][0][WORD_LEN + EXTRA_BIT-1:0];
          mid_sum[(NUM_ELEMENTS*2)-1][WORD_LEN + EXTRA_BIT-1:0] = grid[(NUM_ELEMENTS*2)-1][(NUM_ELEMENTS*2)-1][WORD_LEN + EXTRA_BIT-1:0];
        end
    
        for (i=1; i<(NUM_ELEMENTS*2)-1; i=i+1) begin : col_sums
          localparam integer CUR_ELEMENTS = (i <  NUM_ELEMENTS) ? (i+1) : NUM_ELEMENTS*2 - i;
          localparam integer GRID_INDEX   = (i <  NUM_ELEMENTS) ? 0 : ((i - NUM_ELEMENTS)*2+1);
    
          adder_tree_2_to_1 #(.NUM_ELEMENTS(CUR_ELEMENTS),
                                    .BIT_LEN(WORD_LEN + EXTRA_BIT)
                                   )
              adder_tree_2_to_1 (
                 .terms(grid[i][GRID_INDEX:(GRID_INDEX + CUR_ELEMENTS - 1)]),
                 .S(mid_sum[i])
              );
    
        end
   endgenerate


//----------------------------------------------------------------------------


//----------------------------------------------------------------------------
//平方部分积累加
/*
    [15:0]--------------------------------------------------
                        pp  pp  pp  pp
                    pp  pp  pp  pp
                pp  pp  pp  pp
            pp  pp  pp  pp

    [33:16]--------------------------------------------------
                    pp  pp  pp  pp
                pp  pp  pp  pp
            pp  pp  pp  pp
        pp  pp  pp  pp

*/



    always_comb begin
        for (int i = 0; i < NUM_ELEMENTS*2; i++) begin:S_temp_col
            if (i == 0) begin
                S_temp[i] = mid_sum[i][WORD_LEN-1:0];
            end else begin
                S_temp[i] = mid_sum[i][WORD_LEN-1:0] + mid_sum[i-1][WORD_LEN+EXTRA_BIT-1:WORD_LEN];
            end
        end
    end
//----------------------------------------------------------------------------



    logic [BIT_LEN_FLAG-1:0] xpb_flag_mul[NUM_FLAG_MUL];
    logic [BIT_LEN_FLAG-1:0] xpb_flag_lut[NUM_FLAG_LUT];
    logic [XPB_SLICES-1:0][BIT_LEN_XPB-1:0] xpb_primes[NUM_FLAG_MUL];
    logic [NUM_ELEMENTS-3:0][WORD_LEN-1:0] xpb_lut[NUM_FLAG_LUT*3];
    

    always_comb begin
        for(int i=0; i<NUM_FLAG_MUL; i++)begin:xpb_flag_col
            xpb_flag_mul[i] = S[i+NUM_ELEMENTS-1];
        end
    end

    always_comb begin
        for(int i=0; i<NUM_FLAG_LUT; i++)begin:xpb_flag_col
            xpb_flag_lut[i] = S[i+NUM_ELEMENTS-1+NUM_FLAG_MUL];
        end
    end

    assign xpb_primes[0] = 1026'ha00652a5aa52831c8eb0489540a3b4fa823670e1cf647c887b111c44026ae0c629fa480fa325b682ff8e7833c6e9ce5ebdea21ff2a02240ff1bda602e8dc9439efe9572a8995b7a10a688945a945159cfe9c7f7ae199c70156c755da933af18d26ae49917d23671dd72933abcd84ab787e75d2aa1cf43a211e1f98ecfc9bbc1b;
    assign xpb_primes[1] = 1026'h1225e2a0a2fb64957faecc8afffbe4e31e33f73b9787e0684dc23c3c874f350902b25884e2c80f839a01b0ffde477d495535bf3a9058336f191caeb36f9a29618da204fef3cb17745cbca5b3a024ebc771ecceea4b76016758ae2bd64db7a0e77d158c4d0fc59f49a92e7fadfab7fa538ac2bf5c47646183a5cfbc2434793bcb;
    assign xpb_primes[2] = 1026'h86d29d29626fa43cc3c50c50ef31f3d1bd55b28b301027f7f1bf87057dad81040589dbdced620a096df6216b5305dbbfc3838065dfe462ffc39c4d058ddf57d4e670c6c8ee41259c8e5056fbd177feccd01bad7f35847258b4d4125ac1e7037b003d019a6b2a78088802b23a3c782aa684e4feef33f87183c6fcb43e231020a7;
    assign xpb_primes[3] = 1026'h846eaf9104494288821bfc216fc1a146ea9fde4afcae82de26400e31884616387ccdceefa61a4c6d501614e945e3b21c62cf8c8dfb78e176e7c47ff05af4b4758dcf591bfbb7e6dc7cd509dedb188d0619a042d8d6d922aa2bbd73f316a87f05b49b46d93c0d589d25e73b517e67a34f5190753ecf093e5d06586f338d0b7d62;
    assign xpb_primes[4] = 1026'he844837d0ffafce16d93f03b5a9a26fc4ceb5ec239a14ec47558763a8bd6737ccc2c7b389b83028d3c3071e03ce6ddee17dbe9e90cceb9461d49d254bf539fcaa42bb265cc4626f90bd323c71ead7f73831ba23df8a9167e1d70274e1c1d952be0df405f42e30520b2784eea17482f1ade9739180b702cc87219ae0a954f3b4;
    assign xpb_primes[5] = 1026'h8c1d9d691607f7eb74035299b7c3dbf47bf90890990576467d49d66096f0bc3dbb24b55cb6932c3b50fb38f09b8dc0f4788770c32ae7a9fa07f896301fd6762c995a62e80120fc0dfb35064c0a0112a5b1828f3f2b841a6cce16c0a688a7aba0dccbf7602da6aaad90ff2028b14f19271d79f90e51cca7d8424d71f61a3a05a8;
    assign xpb_primes[6] = 1026'h135e753d887afe513a715ec1e3493b17cb44cc9a9939f9aedc3d49fb6af8525a262afd71e8f94143c08de998d56f96685a82bdff0e9d21242b34eafc32b525f6da463fd0e5d245d676990afb38ec46dce5355a82698b7fbc07994b277fb72213dc4bb17d28df83d3cb9679933c0376fb5c35a2d3032ecb5164cc9f934922c07e;
    assign xpb_primes[7] = 1026'h76d3d1e8d1a7f7b0154ee00e55a66dc4cce10ed38ca7c30147ea7608d742754edb30db5069043e35a4c9202316b12ae99fff646f672edf287619ee62740c2676511a7fb37113143f0911460aafab47758ee620a40a6b62b29266f3aed5a1b603ed0776ee7c14c80110546af935cc7500e0d45441886a4a14072719e16f23e550;
    assign xpb_primes[8] = 1026'h58de0348d559e59b8393c5dbe5fb8b54d2f02da5dd29ca5909b6aeec31950e93934532f6d86992a3ca0e56780018b12a3907c46aa1c6fe20e3d100f6691093c3d661d068cd981b6d8732fa62c1032e57e411ac3088d56c7c97e4b77a574b21bc1c65c7f9adae48eacc1fd21b0bc66a9716354caf8a383657d1a1c35fb8b41b31;
    assign xpb_primes[9] = 1026'h1bf4deba50d6b45599c09d25e28d7fda4db3010a8a866f4bf5437276aa03177e70ba62db8de3952d32ac1c2394c02c060c71043b0513918e275ac7825049c45d296d201131c91503bb27701843fd34945b9529c6bf39bc536edd363f47ce8cf5fd18ed5e72c5bc64b3becd289c253727fe6fbccd0e0c5574188344ca1aa51614;
    assign xpb_primes[10] = 1026'h13e7b4fd011f6c10a9a56cc916dd5c9cf29d4a5f5779cceb0b6b2885c51952256470f6f6e9daa55874645f3a03a1e60618b6ccca02348d5234bd693f03422d23af9d25a545d0532bed7985893e531498784029cd6925f0030e0df96559e89783dcafb5fa8f805ed263a28832d97e2923a7568293c89f3afe14f4ecf4331b45aa;
    assign xpb_primes[11] = 1026'h5fe264e37f3c5ece5215eb74c0fe24ce17e9521d6fe6354c4fe0be8baff9325a475c534ca92c912e38271e3aa82fdbc9de755421da5cfddaa8927cafc1a045dbcd5cebe704b3aa6e0de73f0caa915872ae531aa93e65612a205f53f993ed56c562a23f26eada2a095fc79121452716057538d7c58d8189b593df63538c524823;
    assign xpb_primes[12] = 1026'hbbf89a1e8f6cd2f6ebff06536139bb6c738223c6e1d167941927677a1946b1c2efc686f17052f1787215e70e1eb178bc6348bce34a164b2bfdaccf1e87932fea38eaaf9998a5e63dbd88e5e2b8421149b77fd39db9b0be80f0c227e8d54cece424afca1c86d090351848967861f9026c83878eff31d8dd588ef414c718fb41b;
    assign xpb_primes[13] = 1026'h94a4dc69320711589c5496ca4b36fa1814b81ffbf97b2fe158d95204be91459c87af9e3cadef95c2ff65f06f6798019adaa524d4d75fa7a5c6a069ba1322935e22edf8784fbd5342f72f52308cc2864ee48dda4b644b11aa410e0d12572d605090c728df3c9510ce2953354fe68d4b2d76e1915cfb2c825079f3bd61fee1e4e9;
    assign xpb_primes[14] = 1026'h6586e6a987c1f9be121243fdf5fda8920596c0b2d5c930de41bb8bc132473ce47e64b164a8e343836694e4c7dadc83e33f69720854f5489cbf2aed07899ee3026136a41a089dfd63ed9efec60944711136c9b37922fa2540343574d307a031e3fb3fd7504be91f87fbb429f195425001b69f75fcca7e9f816cd39333e31c5475;
    assign xpb_primes[15] = 1026'h14e5b404fb60ff87eb945c1407be748793f571de26a417640930b71d1f3df7a1b56a93990ca1a97858233a8ca1f531cb7a42d1dccf7280782a397f899afbb804702ff6b288199062866a61b5875fa550279b3d99bab2ae21e1a0174d59e04241598e5ed662d387d93b624c92af53d1d3bb2c75a290c08319db5ed4035ae25b4c;
    assign xpb_primes[16] = 1026'h65d6b3de4c47c0196984972e5722411325c38b14de68874cf12dad7f019cc7cf2bca187115f687e7fbfec6a71cbd1a65fdeec68dec778688d9f1fcf4bdf947576c8e7313e17e30142cafbe5d7f5f016efaf8a0ebfba36cb744357b85a1612180709bf68bf2fbb657704b8672b2a04e7a0f173a9369475aba3aadb495dc810e53;
    assign xpb_primes[17] = 1026'h84445304a3baa0c70b4fe79c47b18b1e66540b8d9855b128a0c744f33ff4ea6da2e6a36981bb64d0a2ac0f9515366565d7087cfd770b093ee29d3c8f92c657a4ff952519dca8096bead2a8c56d04478176d1f6bbe1e37fa05a2d1d6ca855aff258635d2e8f5b54dd0faeb3c75b4b05bd13e3f4c13a1e744458ac8a5e970c593b;
    assign xpb_primes[18] = 1026'h7beeb26e26ef01a32da71d09955e63dd6ca6176704dd6c63f98c21d3d79875416ccb0695976e29496742299bc7dff31c1042e3ed1fe358c1e5052dc92e1ceebca16f5e6504712727b0f06789319fb9040549382044ffa9e3835beedb2901dc823838ad6cc11a4c6026174bd2084b8346462fd97628dee6d1b14c6ffaac02c19e;
    assign xpb_primes[19] = 1026'h1774601716f27865b61a6470e028868c6c680a90337f47ed867e7f37cbbb76e5743a15b92ab101edc03ee1309e5ae80d1f024c7a646f5d0f6908e7e0004b8b3633139f5ff5cef6450941fd6048a4228d9ebf48252754f3d2651105dd265aa76560e0ac8d432e779abd328efcac117a553b82eec619626d540af2dcb1da005f8f;
    assign xpb_primes[20] = 1026'h1f96c887dd1bde46d69c2f58ca7cb89c23fbc3e8ba7c29a5260d4f4be7f517ea823115bb0db8c94eda423143f74a80e06396736c28309cc283f279f483007466eb9d953872e5d1ddd36ebae155ee2f1a6f12cb0d53eee13730ac218be67880ea6742025a89bbd3832d52aaa3b48457af3a938641ac21165928192be4717e63ac;
    assign xpb_primes[21] = 1026'h5e016f06c2b0ec67fe12c41d4499f15db588b061dd61a8f9a7dd388ade70f272d0e4443c7570647dfc9dcfc60089e43ed247fffe7a8aeba791452f2631efed9d2802339c3ac5c90257e6b9efec7fda82235970d7280a92e6b6b67dcdbf879a7f7cd5bb93752b07ba3d61d9600dcc99ed8c6b5fdc0cf8f5915f7afaf1417260a9;
    assign xpb_primes[22] = 1026'h1da49393781e2fdd094bbc8c886f66140fcb3fad147e53cb69863f43c3f60f751049d2914d2385de2046fecbf57bc268fd47cd909b476b7953e4c4cfb73a44c996ea50a7b9e03972fc0cfcfedbecbf6353317735a6a854bd8499c1bdaf238903ca547a74f94a9ff17a3ee71dbfbf8dd0ff7ece93fc2a11e0e612e5c53a7e8d6e;
    assign xpb_primes[23] = 1026'h71ba95e60617fd6420b27e9c10af00df30220a1e12ea7d739057c83eb3878124d02c6251529098c041f443e4815dd8be7e30fa2325913111fd411b21e7dfb563ead40f41c9453e6f105fae81989810b10589b3ccedfbfff45d5bfb99d3df7dda984a64b6d86653cc831505722cf9ff5937344a2b7d0d85b1bfc4b6bb79b93a6f;
    assign xpb_primes[24] = 1026'h2cc260305d9dd832cb85ba8243f2bd2ee8f445a16a42656d11598f3a8a2f25bf5abcefc06d4d075222fd29c62dc3965d3bf03bbf42892461b8e189d67892284b8b024ef5d3c6f7f4574b5a5ea998da95f7fa4197293619dead2a04c54810aad06f1ace4015fdb915c21f2a491ca8a4187f78a309e2874a8db7f580742e2da392;
    assign xpb_primes[25] = 1026'h9b4de21b2627a5c779e472b83e79d13c26567d4eb5708c2132ef4a740a36011804a761e742e6b5b1e3b2928e74105690737fbfe2e4096c455262f39f73e7ced176574b21372b65d3028fc4ebbe64a94936f47a2ce4581f8c46924a0379dd72dcdd43324aefceb7ea7126c4d5934dac9505c981bc13144b3da6c44a18792c08e2;
    assign xpb_primes[26] = 1026'h12c09c0739f1592e4c387a61f5bb571238d0b04bbc5b29945ca9ed330eee9184915c2d748f42952bc1ff2c038ede0b31a20060592d9c49c977f3a742ffadd9920b5a09677ab1630dd3cac0f6bafc0ef47aa60411cdbf2e7c11518c6828a54d5c1297ba208f2e494be4ec6487fc8986318e08336f8bfb4f5a1b7da4b8c5cac1a8;
    assign xpb_primes[27] = 1026'ha89c8915a69a4114ccd325e21262a72b2f230ca3b08fce518193e3a837d1a8aafb0bbea6915b753b768273faee9f7772cdbf344b99c87f9c30d46aa5c5e9ba47258b34d59afd003a62d1238d34595cb080e8ca4d6d31bc5d3a6631e5890d591407709c88655337f084f2b0f2f234c9c6fa553d7fdfdd5cf40e05a197e2d38307;
    assign xpb_primes[28] = 1026'h2cda3ef69c54ec927df3a3977efb458b1cb825d713fd78462e089e6b2ae94569a0683aef9893fa0ad23797c2c20ca716fe17c8cb3932f4d5707c2866c1498b3b5ddea50ff185678088e967d821048907cada0795ef7b38237ad4f14288cde4eeb2dafbcc6c3bf449acee4854f45bae44f0fa849c7094ebcd5d811ef0f2a90290;
    assign xpb_primes[29] = 1026'h5263a618b6f620c1a13a4b598a7e44dd8369b75c98eeb87a0cf29476b0829eaadced65aa925c176c87cc80266eedcd0c50f84215f60aa986cb2d9274cc11ad6ae59d34fda5e4f6ff84fae01c86caa977a0452096cc44c3ee60d7957940277ca09cc68cd5ff88a76022f60c0cbc04e6711f9296d8ba06332fa4033cf521360841;
    assign xpb_primes[30] = 1026'h29369451eaf64ac5d39229671b81a1cfde29b0333a8eb42a49ada0d38c38935d74dfe19f9a0247ad4e068160ec99dfc02ba0ddb664f2af659fa8fc058f6e314f517d7c180b5472293c87f22095ff884a5aae50252624891e735a639d20e70f8636063c8f3fb02bb2c9049c573ed576446fb012f2be4fe3faba8868dcecdc7475;
    assign xpb_primes[31] = 1026'h597a96f6c353d13ec5dfe00022d71dcb621ab17389ab0a40c9544fb3fe92eb63d3e31212e6fdf757dc6c5a86a9a385e147d1d570ab9147d906948b83a3f900d516551ffe872544de276d3a899cf9d372bb1091b528d16291367bfdc427944eafdf7628247ac07dcb0ef3d25557ada2fc7ed642071fa0fcca5dd1f1126d032083;
    assign xpb_primes[32] = 1026'h5fe51a946412895ae0b964df4f6d1cd35dbd93e815ae4f4fb52e876cb73ea01668f2f54b2756f13e628a9d2cd0e57595a45acf48a3d013414b2d1dc94bd8af656c722b8ada920fe7cbdf5e15e39142ae0b0777e1a546519b981953560f42866a98d1f78e57199ba37cf615a16f8c9280896af88a1ab3fd5d15be413bf364533;
    assign xpb_primes[33] = 1026'h210c329225195270a1d2506fd1dbe9a39978cc4d3b2a8db4f8c96c4675c4ddfaacdb26920aceedaec66b547df9858cca6dd412d5b27553701b05517cc17305d626ee34c294f731f16e847c4bb7ce3b99804ab6a823f86569158dc0bd902cf626bcbaad6b7893e2da44f44ccee0aca7e2f9a2327401679b28420682d59f3ba4db;
    assign xpb_primes[34] = 1026'h69e030c962752b49149b89fee6d8afbdf78872dd23a35f30c9641c3f57d9732df18a190f6676dd4055ac19328eaa72c6e66b38ebdd5652c628448376749e8deafc2a00849572291fc9d98a32f09150466070c97fb4af3b78abd7a8a6c8aa610ac4e6c850ebccdc461c022056ab1fb3b09631b0dee2842079dcd530193c2ef08a;
    assign xpb_primes[35] = 1026'h2b47b16143096cea002136dd06170a51618da50752388e2891f31bb66dab2f4a6d56bf1af1d32fed67b93cb3f9290d948858f53538f17ca9e54625d0a5db10ddf58b92de7f49a066dd74ae8545e1a685ba4929216781337c2ec00f908a64b8d5f7db0e0b3d4b946d2aa5b790a8823f20234d35b426dec9efabda11837c780b1d;
    assign xpb_primes[36] = 1026'h1f673319dcc7d8358df3bd3b8cdcf42c665b39cdd23f8c842be7e963457b78d8db2e7cfe25e8e3bb1c5fd1b2a0a3943774f31eed83177ab00340c69e46fc0537b3ccbc93b1fc13d828640543c0c4646279250304cd2e18e6f246090e0b26fc89c9433ad7395a2f65713885f9a7e700d662d4e28773c9ba78fe76ee17e55a45ee;
    assign xpb_primes[37] = 1026'h67471ed001d3ddde446ed374e87f6cb0c03ca44ec97eef092e728a2a7f17ee991ab12dfb0c3cc30c9173873a5c3b7c2878d61becb2aa8f5c78db07879d7a29a0a8b6a5c7ced46195a5cbda995503c5c620a830343fe47a018d1bfb1068a4cde7625cd06e773849c56a7106db820e0b51296a3a845568e9f21dba970608b9fb80;
    assign xpb_primes[38] = 1026'h65c767ae3a9d60d9ca2e7e5d56fe61b4d3634ec6b889352cf30829aaff29ea9ddf3adfba1093fcc4f4a7513530c1da205dd809241ee02a458101ed81c21029a495112e0dd5b9347339ccff3f56f02f1403b996c7cf4bc7ac267f63afffcd84c5187afe745f92d7cb7bcbee1c2bf285e5995df4cf4c21f49e4e921b21fbf7b609;
    assign xpb_primes[39] = 1026'h66f836b8eef38ab264f733f3d01559bdea2a2be09e7d7d47edeb2fddc4fe7c8eb26a666855e73dbadf5393b15f0636b3b3de1d2d162596d000d9b2bf83298767b95da057f77cda78c4f0ba4fbd8c2c77651b3d8050604159dc6c07650b4450616af2595ae214bc870bd60442de99d79094d8ff0eba7c8a4ecccd3c390237266d;
    assign xpb_primes[40] = 1026'h2ad934fe438502cc931cc3b88c3f4de6e1828f84560d69dba505f7bb44508fe88df0092e9066a627f91681912b308f48f2be311a99f473f8d3240b27518f31515ae6cc807d2d1c5a6218942fcf7ed153bb3ccd322a64286d0b6d07f66943f27392c67fe18bd328367aa819f252e2efb97aed9aaaae0e23305169dca41bb651af;
    assign xpb_primes[41] = 1026'hf4f892ea78b68affe3a29ce08df07083a9a3c2818b6ea45b1e0959887c5be743290870ff4328e3bfc2490083d227d1b41316fc62a2897dc4c1f0d372af8597b9eefa7a4e88de3a7ae50348074ed03eea051c53f95fb2005628724a19f6a32d29fd4e36d4abed7dc0b8a7bb53a9832480ff6b728fc249e34cf44702bb96c48ce;
    assign xpb_primes[42] = 1026'h35698e22556b0bea6b808cfb445422e6433750677184f71f822523a7a617bdcfb1f889a6224a7e43344a8794a964c76ecf8b0fecdb218d0bf0886f9d76d0f25c7e93396532453f088dfffff010b9665c8ae2a6e5cb83acdbbb4746625b0636f39a79dfe61d9a3ffa40a2ae5ccfc9819a84019db1665c8d59ed21bfd3b270005b;
    assign xpb_primes[43] = 1026'h6c987496a4fd680099ccc466982ee8467f58823c9920e29c95b079c602b8b1da7397ca4df328dea4edbb9f50aba3606017b50ccc368bced78b595e50ab0d8945f79c133a0e37d86c68fc213b96812e5dd5e169a86ce41a251390eb16ab66213a39fa7b24beb697d252f5902718d12f27488c43ce84e20116b447477e6f1ccf34;
    assign xpb_primes[44] = 1026'h1426ace823e2e6b309fb918bcacc7a213eca870b7924e37ddc834bcf1ecbb4c32ddec2b8317ef7dacb5ff346c1021129d1220c5bf23be56b9c7799d9c9b81ce49c1267223420024b2378f198a9c8d70492d61f146955fc59e224951488896bbe4dd7caa330bc259080193073689288aaed855e138e71561c25db6791d6cc5f62;
    assign xpb_primes[45] = 1026'h8a35e22b0a31fbc44be705f10e6b1707ffa2516ca4f2fbeab5b436c770a379eee85901011fffeb7725b35d6800e39c4388bb155adce65aad1091bca6c891b73cb6b2201e4b48d8dfdd37bab616deb5a1e5d5619f570a305033169e7a3afffdf6bf99eb90da27ec3121d10ef38db0cb85494663251dd57a7304dc4c67fd8fe01a;
    assign xpb_primes[46] = 1026'h46a6e53e212f9cbd9de2ac5b47afb4ad6d0ba865a83e5c19d537fb5b890d5caf8301eb74f08499de064e0fb49d87058e7356a08f93256ac6197794f3e6fd8962ce3b0867a00f9d9b8a585ee502d74e61a152d65495fd59e148a424eff5cbfe99b2650721a5698380de5befbb523b06dc89fef9df95ebea32c51f406f2cd599ff;
    assign xpb_primes[47] = 1026'h4b513b17bc50067b27941e5caac2829d885504117ac5acba549a9cecddc01bb9d19040263f283be15e84e3a12af594590ef512eb4b6ca501969bd795dacacc0950057948b1e4084d1ab13f9904a851ee4d092e63be21e71ac39be393ec011f688f15cb80d5e43e267887cec02169eb3fe837b3f21719f424b20cb79c992c5c4b;
    assign xpb_primes[48] = 1026'hae3c48af9a4cdb409ea1a612f69ca986247f469638fbc49c688f7c7be4b51a21f661a483c90854473789d4033812b83f088f29fc094482a6451390999b38b69fc1a4869eaac60bde469f729d0b112ad39b799da2a89ed727a24d596af8b15c37824b3e3ee26a2be9bab66f28592b6651c5f5ffbd83c020d62bdccf4e51803d35;
    assign xpb_primes[49] = 1026'h489139defb7ea23aaf96056241b51944cf0cae579d82d196324e1afdf4925174c5970c5d41f47ceb98484595525c10bb46a71b087f2fc05364d1a3e26ebf495af2406d6e65b98a794507c5a66066fcb43da571f9fcf269e34aecdfdd9488ac9e1ce0792cda9bd8d56b70727446cf854d2fea0064ee5db2469ad326aa480876ae;
    assign xpb_primes[50] = 1026'h9f63c98ee726b34b6f70b9eab4f818bde0fa1fe5e67afe69621304c359197a15d76c94957b72ce4d950219db9f3fd657e8e356b1650c3e6fcbe0a00077134be621602277b2a3556aea4f4e34c178ce7c22e258431202ed0bfaaca4f047c6a8759221a112ddd772b7430674f15490ba9a3e7ce4b92e2955f53f18a43bd1f34f89;
    assign xpb_primes[51] = 1026'h68cb0a839ac2ee711a0ebb2276f902bb6602ff56e3b0b5923dbc6dec271665de560bdc2c560f5072268bdeaf80f822d6d204c26ca7901358e5e8a7c86149ee6f91f3bf166b3e730847a62bcc439ced2e3f4b17f4fd3230b4055a7385a3edeb1e2f91ab7014a42d9f235cdc467dbce86f4dab493368b26afd9fe3f9a9f89da66f;
    assign xpb_primes[52] = 1026'h7518ca598e4055abffdaf6b506d876b0195867c3de73fe24883af3867a8f4a615848b660d577bcc36f358c52b2ef56ff42ec66d1764f512963a9947464dae550587e22fa7adfd4aab4e624e4ebe39a3f388e6331076f513c105c268c6b6b6d0eb4ddbc5a2a3aea057fee144f021ce3778dc1bb4487bae2cd1079fb1125e1df23;
    assign xpb_primes[53] = 1026'h63d6a0f18ab62fb4bdf10064f14db20ab5d47fe96e4d76532abd1b23f35d79c3aa2048554b80bebbe098a27c5e146fa64501e2ae18364981793fdc14abb3402d284af849d79eee7b0c47d25e6aeedac41b1899c4dfdbee591548640aed419c2c52ce02ad27b20b7062b69994f23ccb1c3b993f8d7ff0f2bb5663fb7cfa4bf387;
    assign xpb_primes[54] = 1026'h878e88032bc2f32fe65fdb211e53d13e3735dafd4017050edc2d6518cbaaedfd56e6850da4221acc69acb8636d1b571716f84dc4cc4b63eeaf4ed568099a4db8a25dcd8b794cff37e937379c53540d84b6164b1bb06bef2178218604ba94c5d8b47636bb4af4b17cb3081da61d3bcdf9a45a0f5f8c8fa9e6c6b2374e3c75335d;
    assign xpb_primes[55] = 1026'h681887084361b02d0175eeadce80d4d1438873e35334ddecbf1b7cb0f64e209a5b0b7e023d0520bf38cb46649eb1dbc7049ec89fbb7ac721654682e9669ff258c1ab5de9bb52b1a8738bc55e7743acc7dee9212788bd726047fc040518ed55ac2a9482def3074b5deade84edcc210b74baa1e7e670ddd976c8658c2a6524547;
    assign xpb_primes[56] = 1026'h3739fae128bb4775bc6046c2ea5ad98e11e221e7354b45a45e4c229c91d0b129c5997846e5350d38890bdabe00182c9861ffe7829cfcbce49b264b398d6f9f75674b09285177432866ab10d96b543c827f2dd5a74a6f3e0082445942117c66c3fdd13c391e6710aec97bb91c3bbf984de2e48bdf073a0c7e6ff81c940747a171;
    assign xpb_primes[57] = 1026'h61d401740d4ff5029a345e0b518139d60999e2a1b828e4a1b3622b335c09e36ac0a6b2ad12eb7e754a209ca85682cec3c687eaa62e4ee27a144fde36b4e1ab7b0325b330862dde8193048e6292e85df7838ebe8a914c6834dfe4dd6971212243f3663c57cf15b49c1f370bf3b5503b71ebf6f3b6ede68803e5f5356a35038fe9;





    xpb_lut u_xpb_lut(.flag(xpb_flag_lut), .xpb(xpb_lut));


//----------------------------------------------------------------------------
    /*乘法器的序号从右到左递增，从上到下递增。
        p03f0(3)    p02f0(2)    p01f0(1)    p00f0(0)
        p13f1(7)    p12f1(6)    p11f1(5)    p10f1(4)
        p23f2(11)   p22f2(10)   p21f2(9)    p20f2(8)
        p33f3(15)   p32f3(14)   p31f3(13)   p30f3(12)
        p43f4(19)   p42f4(18)   p41f4(17)   p40f4(16)
    */ 

    always_comb begin
        automatic int mul_i = 0;//乘法器索引
        //用pb和flag的值对乘法器的输入赋值
        for(int i=0; i<NUM_FLAG_MUL; i++)begin:xpb_input_array_flag
            for(int j=0; j<XPB_SLICES; j++)begin:xpb_input_array_pb
                //乘法器位宽变化，此处就需要相应的修改
                mul_A_xpb[mul_i] = {{(BIT_LEN_A-BIT_LEN_XPB){1'b0}}, xpb_primes[i][j]};
                mul_B_xpb[mul_i] = xpb_flag_mul[i];
                //保存用乘法器的输出
                mul_P_xpb[i][j] = mul_P[mul_i][BIT_LEN_XPB+BIT_LEN_FLAG-1:0];
                mul_i = mul_i + 1;
            end
        end
        //将约减没用到的乘法器的输入赋值为0
        for(int i=mul_i; i<NUM_MUL; i++)begin:mul_remain
            mul_A_xpb[i] = 0;
            mul_B_xpb[i] = 0;
        end
    end
//----------------------------------------------------------------------------


//----------------------------------------------------------------------------
//xpb累加
/*
    LUT_gen--------------------------------------------------
                    pb  pb  pb  pb
                    pb  pb  pb  pb
                    pb  pb  pb  pb
                    pb  pb  pb  pb

    [26:0]--------------------------------------------------
                    pb  pb  pb  pb
                    pb  pb  pb  pb
                    pb  pb  pb  pb
                    pb  pb  pb  pb

    [43:27]--------------------------------------------------
                pb  pb  pb  pb
                pb  pb  pb  pb
                pb  pb  pb  pb
                pb  pb  pb  pb

*/

// format mul_P_xpb
    logic [XPB_SLICES-1:0][BIT_LEN_XPB-1:0] mul_P_xpb_temp0[NUM_FLAG_MUL];
    logic [XPB_SLICES-1:0][BIT_LEN_XPB-1:0] mul_P_xpb_temp1[NUM_FLAG_MUL];
    //logic [XPB_SLICES-1:0][2*(BIT_LEN - BIT_LEN_XPB)-1:0] mul_P_xpb_temp2[NUM_FLAG_MUL];

    always_comb begin
        for (int i = 0; i < NUM_FLAG_MUL; i++) begin:mul_P_xpb_row
            for (int j = 0; j < XPB_SLICES; j++) begin:mul_P_xpb_col
                mul_P_xpb_temp0[i][j] = mul_P_xpb[i][j][BIT_LEN_XPB-1:0];
                mul_P_xpb_temp1[i][j] = { {(BIT_LEN_XPB-BIT_LEN_FLAG){1'b0}},mul_P_xpb[i][j][BIT_LEN_XPB+BIT_LEN_FLAG-1:BIT_LEN_XPB]};
                //mul_P_xpb_temp2[i][j] = mul_P_xpb[i][j][BIT_LEN*2-1:WORD_LEN*2];
            end
        end
    end

    logic [NUM_ELEMENTS-2:0][WORD_LEN-1:0] mul_P_xpb_temp2[NUM_FLAG_MUL];
    logic [NUM_ELEMENTS-2:0][WORD_LEN-1:0] mul_P_xpb_temp3[NUM_FLAG_MUL];

    always_comb begin
        for(int i=0; i<NUM_FLAG_MUL; i++)begin:format_mul_P_xpb_temp
            mul_P_xpb_temp2[i] = {{((NUM_ELEMENTS-1)*WORD_LEN-XPB_SLICES*BIT_LEN_XPB){1'b0}}, mul_P_xpb_temp0[i]};
            mul_P_xpb_temp3[i] = {{((NUM_ELEMENTS-1)*WORD_LEN-XPB_SLICES*BIT_LEN_XPB-(BIT_LEN_XPB-WORD_LEN)){1'b0}}, mul_P_xpb_temp1[i], {(BIT_LEN_XPB-WORD_LEN){1'b0}}};
        end
    end



    localparam EXTRA_BIT_XPB = $clog2(NUM_FLAG_MUL*2 + NUM_FLAG_LUT*3 +1)+2;

    localparam EXTRA_BIT_XPB_0 = $clog2(NUM_FLAG_LUT*3 +1)+2;

    logic [WORD_LEN+EXTRA_BIT_XPB-1:0] sum_xpb_temp[NUM_ELEMENTS];


    logic [BIT_LEN+EXTRA_BIT_XPB_0-1:0] S_temp1[NUM_ELEMENTS];
    logic [BIT_LEN+EXTRA_BIT_XPB_0-1:0] u_S_temp1[NUM_ELEMENTS];

    //always_comb begin
    //    for(int i=0; i<NUM_ELEMENTS; i++)begin
    //        if(i == NUM_ELEMENTS-1)begin
    //            S_temp1[i] = 0;
    //        end
    //        else begin
    //            S_temp1[i] = S[i];
    //        end
    //    end
    //end
    always_comb begin
        u_S_temp1[NUM_ELEMENTS-1] = 0;
        u_S_temp1[NUM_ELEMENTS-2] = S[NUM_ELEMENTS-2];
        for(int i=0; i<NUM_ELEMENTS-2; i++)begin
            u_S_temp1[i] = S[i];
            for(int j=0; j < NUM_FLAG_LUT*3; j++)begin
                //u_S_temp1[i] = u_S_temp1[i] + xpb_lut[j*3][i] + xpb_lut[j*3+1][i] + xpb_lut[j*3+2][i];
                u_S_temp1[i] = u_S_temp1[i] + xpb_lut[j][i];
            end
            
        end
    end

    assign S_temp1 = u_S_temp1;
    //always_ff@(posedge clk)begin
    //    S_temp1 <= u_S_temp1;
    //end


    always_comb begin
        for (int i = 0; i < NUM_ELEMENTS; i++) begin:sum_xpb_temp_col
            sum_xpb_temp[i] = S_temp1[i];
            for (int j = 0; j < NUM_FLAG_MUL; j++) begin:sum_xpb_temp_row
                if(i == 0)begin
                    sum_xpb_temp[i] = sum_xpb_temp[i] + mul_P_xpb_temp2[j][i];
                end
                else if(i == NUM_ELEMENTS-2)begin
                    sum_xpb_temp[i] = sum_xpb_temp[i] + mul_P_xpb_temp2[j][i] + mul_P_xpb_temp3[j][i-1];
                end
                else if(i == NUM_ELEMENTS-1)begin
                        sum_xpb_temp[i] = sum_xpb_temp[i] + mul_P_xpb_temp3[j][i-1];
                end
                else begin
                    sum_xpb_temp[i] = sum_xpb_temp[i] + mul_P_xpb_temp2[j][i] + + mul_P_xpb_temp3[j][i-1];
                end
            end    
        end
    end



  
    always_comb begin
        for (int i = 0; i < NUM_ELEMENTS; i++) begin:MS_cols
            if (i == 0) begin
                u_ms[i] = sum_xpb_temp[i][WORD_LEN-1:0];
            end else begin
                u_ms[i] = sum_xpb_temp[i][WORD_LEN-1:0] + sum_xpb_temp[i-1][WORD_LEN+EXTRA_BIT_XPB-1:WORD_LEN];
            end
        end
    end



//----------------------------------------------------------------------------



endmodule





module multiplier
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