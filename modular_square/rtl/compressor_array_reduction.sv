module compressor_array_reduction
#(
    parameter BIT_LEN_FLAG  = 18,
    parameter BIT_LEN_XPB   = 27,
    parameter NUM_XPB       = 38,
    parameter NUM_ROWS      = 66,
    parameter INIT_NUMS_COLS = 1026,
    parameter NUM_ELEMENTS_OUT = 1054
)
(
    input logic [INIT_NUMS_COLS-1:0][NUM_ROWS-1:0] cols0,
    input logic [INIT_NUMS_COLS-1:0][NUM_ROWS-1:0] cols1,

    output logic [NUM_ELEMENTS_OUT-1:0] C,
    output logic [NUM_ELEMENTS_OUT-1:0] S
);



    // compressor_array_6_3 level0 parameter
    localparam NUM_ROWS_LV0 = 66;
    localparam NUM_COLS_LV0 = INIT_NUMS_COLS;
    localparam MAX_COLS     = NUM_ELEMENTS_OUT;

    // compressor_array_6_3 level0 Intputs
    logic [NUM_COLS_LV0-1:0][NUM_ROWS_LV0-1:0] u_ca0_0_in;
    logic [NUM_COLS_LV0-1:0][NUM_ROWS_LV0-1:0] u_ca0_1_in;

    genvar i_0;
    generate;
        for (i_0 = 0; i_0 < NUM_COLS_LV0; i_0++) begin
            assign u_ca0_0_in[i_0] = cols0[i_0];
            assign u_ca0_1_in[i_0] = cols1[i_0];
        end
    endgenerate
    // compressor_array_6_3 level0 Outputs
    logic [NUM_COLS_LV0+1:0][NUM_ROWS_LV0/2-1:0] u_ca0_0_out;
    logic [NUM_COLS_LV0+1:0][NUM_ROWS_LV0/2-1:0] u_ca0_1_out;

    compressor_array_6_3 #(.NUM_ROWS (NUM_ROWS_LV0), .NUM_COLS (NUM_COLS_LV0))
        u_compressor_array_6_3_lv0_0 (.data_in(u_ca0_0_in), .data_out(u_ca0_0_out));
    compressor_array_6_3 #(.NUM_ROWS (NUM_ROWS_LV0), .NUM_COLS (NUM_COLS_LV0))
        u_compressor_array_6_3_lv0_1 (.data_in(u_ca0_1_in), .data_out(u_ca0_1_out));


    // compressor_array_6_3 level1 parameter
    localparam NUM_ROWS_LV1 = 36;
    localparam NUM_COLS_LV1 = (NUM_COLS_LV0 + 2 < MAX_COLS)? NUM_COLS_LV0 + 2 : MAX_COLS;

    // compressor_array_6_3 level1 Intputs
    logic [NUM_COLS_LV1-1:0][NUM_ROWS_LV1-1:0] u_ca1_0_in;
    logic [NUM_COLS_LV1-1:0][NUM_ROWS_LV1-1:0] u_ca1_1_in;

    genvar i_1;
    generate;
        for (i_1 = 0; i_1 < NUM_COLS_LV1; i_1++) begin
            assign u_ca1_0_in[i_1] = {u_ca0_0_out[i_1],3'b0};
            assign u_ca1_1_in[i_1] = {u_ca0_1_out[i_1],3'b0};
        end
    endgenerate

    // compressor_array_6_3 level1 Outputs
    logic [NUM_COLS_LV1+1:0][NUM_ROWS_LV1/2-1:0] u_ca1_0_out;
    logic [NUM_COLS_LV1+1:0][NUM_ROWS_LV1/2-1:0] u_ca1_1_out;

    compressor_array_6_3 #(.NUM_ROWS (NUM_ROWS_LV1), .NUM_COLS (NUM_COLS_LV1))
        u_compressor_array_6_3_lv1_0 (.data_in(u_ca1_0_in), .data_out(u_ca1_0_out));
    compressor_array_6_3 #(.NUM_ROWS (NUM_ROWS_LV1), .NUM_COLS (NUM_COLS_LV1))
        u_compressor_array_6_3_lv1_1 (.data_in(u_ca1_1_in), .data_out(u_ca1_1_out));




    // compressor_array_6_3 level2 parameter
    localparam NUM_ROWS_LV2 = 18;
    localparam NUM_COLS_LV2 = (NUM_COLS_LV1 + 2 < MAX_COLS)? NUM_COLS_LV1 + 2 : MAX_COLS;
    

    // compressor_array_6_3 level2 Intputs
    logic [NUM_COLS_LV2-1:0][NUM_ROWS_LV2-1:0] u_ca2_0_in;
    logic [NUM_COLS_LV2-1:0][NUM_ROWS_LV2-1:0] u_ca2_1_in;

    genvar i_2;
    generate;
        for (i_2 = 0; i_2 < NUM_COLS_LV2; i_2++) begin
            assign u_ca2_0_in[i_2] = u_ca1_0_out[i_2];
            assign u_ca2_1_in[i_2] = u_ca1_1_out[i_2];
        end
    endgenerate

    // compressor_array_6_3 level2 Outputs
    logic [NUM_COLS_LV2+1:0][NUM_ROWS_LV2/2-1:0] u_ca2_0_out;
    logic [NUM_COLS_LV2+1:0][NUM_ROWS_LV2/2-1:0] u_ca2_1_out;

    compressor_array_6_3 #(.NUM_ROWS (NUM_ROWS_LV2), .NUM_COLS (NUM_COLS_LV2))
        u_compressor_array_6_3_lv2_0 (.data_in(u_ca2_0_in), .data_out(u_ca2_0_out));
    compressor_array_6_3 #(.NUM_ROWS (NUM_ROWS_LV2), .NUM_COLS (NUM_COLS_LV2))
        u_compressor_array_6_3_lv2_1 (.data_in(u_ca2_1_in), .data_out(u_ca2_1_out));



    // compressor_array_6_3 level3 parameter
    localparam NUM_ROWS_LV3 = 12;
    localparam NUM_COLS_LV3 = (NUM_COLS_LV2 + 2 < MAX_COLS)? NUM_COLS_LV2 + 2 : MAX_COLS;

    // compressor_array_6_3 level3 Intputs
    logic [NUM_COLS_LV3-1:0][NUM_ROWS_LV3-1:0] u_ca3_0_in;
    logic [NUM_COLS_LV3-1:0][NUM_ROWS_LV3-1:0] u_ca3_1_in;

    genvar i_3;
    generate;
        for (i_3 = 0; i_3 < NUM_COLS_LV3; i_3++) begin
            assign u_ca3_0_in[i_3] = {u_ca2_0_out[i_3], 3'b0};
            assign u_ca3_1_in[i_3] = {u_ca2_1_out[i_3], 3'b0};
        end
    endgenerate

    // compressor_array_6_3 level3 Outputs
    logic [NUM_COLS_LV3+1:0][NUM_ROWS_LV3/2-1:0] u_ca3_0_out;
    logic [NUM_COLS_LV3+1:0][NUM_ROWS_LV3/2-1:0] u_ca3_1_out;

    compressor_array_6_3 #(.NUM_ROWS (NUM_ROWS_LV3), .NUM_COLS (NUM_COLS_LV3))
        u_compressor_array_6_3_lv3_0 (.data_in(u_ca3_0_in), .data_out(u_ca3_0_out));
    compressor_array_6_3 #(.NUM_ROWS (NUM_ROWS_LV3), .NUM_COLS (NUM_COLS_LV3))
        u_compressor_array_6_3_lv3_1 (.data_in(u_ca3_1_in), .data_out(u_ca3_1_out));

    // compressor_array_6_3 level4 parameter
    localparam NUM_ROWS_LV4 = 6;
    localparam NUM_COLS_LV4 = (NUM_COLS_LV3 + 2 < MAX_COLS)? NUM_COLS_LV3 + 2 : MAX_COLS;

    // compressor_array_6_3 level4 Intputs
    logic [NUM_COLS_LV4-1:0][NUM_ROWS_LV4-1:0] u_ca4_0_in;
    logic [NUM_COLS_LV4-1:0][NUM_ROWS_LV4-1:0] u_ca4_1_in;

    genvar i_4;
    generate;
        for (i_4 = 0; i_4 < NUM_COLS_LV4; i_4++) begin
            assign u_ca4_0_in[i_4] = u_ca3_0_out[i_4];
            assign u_ca4_1_in[i_4] = u_ca3_1_out[i_4];
        end
    endgenerate

    // compressor_array_6_3 level4 Outputs
    logic [NUM_COLS_LV4+1:0][NUM_ROWS_LV4/2-1:0] u_ca4_0_out;
    logic [NUM_COLS_LV4+1:0][NUM_ROWS_LV4/2-1:0] u_ca4_1_out;

    compressor_array_6_3 #(.NUM_ROWS (NUM_ROWS_LV4), .NUM_COLS (NUM_COLS_LV4))
        u_compressor_array_6_3_lv4_0 (.data_in(u_ca4_0_in), .data_out(u_ca4_0_out));
    compressor_array_6_3 #(.NUM_ROWS (NUM_ROWS_LV4), .NUM_COLS (NUM_COLS_LV4))
        u_compressor_array_6_3_lv4_1 (.data_in(u_ca4_1_in), .data_out(u_ca4_1_out));


// compressor_array_6_3 level6 Outputs
    localparam NUM_ROWS_LV6 = 6;
    localparam NUM_COLS_LV6 = NUM_ELEMENTS_OUT;

    // compressor_array_6_3 level6 Intputs
    logic [NUM_COLS_LV6-1:0][NUM_ROWS_LV6-1:0] u_ca6_0_in;
    logic [NUM_COLS_LV6-1:0][2:0] u_ca4_0_temp;
    logic [NUM_COLS_LV6-1:0][2:0] u_ca4_1_temp;

    genvar i_6;
    generate;
        for (i_6 = 0; i_6 < NUM_COLS_LV6; i_6++) begin
            if (i_6 < BIT_LEN_XPB) begin
                assign u_ca4_0_temp[i_6] = u_ca4_0_out[i_6];
                assign u_ca4_1_temp[i_6] = 3'b0;
            end else if (i_6 > NUM_COLS_LV4+BIT_LEN_XPB-1) begin
                assign u_ca4_0_temp[i_6] = 3'b0;
                assign u_ca4_1_temp[i_6] = 3'b0;
            end else if (i_6 > NUM_COLS_LV4-1) begin
                assign u_ca4_0_temp[i_6] = 3'b0;
                assign u_ca4_1_temp[i_6] = u_ca4_1_out[i_6-BIT_LEN_XPB];
            end else begin
                assign u_ca4_0_temp[i_6] = u_ca4_0_out[i_6];
                assign u_ca4_1_temp[i_6] = u_ca4_1_out[i_6-BIT_LEN_XPB];
            end 
            assign u_ca6_0_in[i_6] = {  u_ca4_0_temp[i_6], 
                                        u_ca4_1_temp[i_6]
                                    };
        end
    endgenerate

    // compressor_array_6_3 level6 Outputs
    logic [NUM_COLS_LV6+1:0][NUM_ROWS_LV6/2-1:0] u_ca6_0_out;

     compressor_array_6_3 #(.NUM_ROWS (NUM_ROWS_LV6), .NUM_COLS (NUM_COLS_LV6))
        u_compressor_array_6_3_lv6_0 (.data_in(u_ca6_0_in), .data_out(u_ca6_0_out));


    
    // compressor_array_3_2 level7 parameter
    localparam NUM_ROWS_LV7 = 3;
    localparam NUM_COLS_LV7 = NUM_ELEMENTS_OUT;

    // compressor_array_3_2 level7 Intputs
    logic [NUM_COLS_LV7-1:0][NUM_ROWS_LV7-1:0] u_ca7_0_in;

    genvar i_7;
    generate;
        for (i_7 = 0; i_7 < NUM_COLS_LV7; i_7++) begin
            assign u_ca7_0_in[i_7] = u_ca6_0_out[i_7];
        end
    endgenerate

    // compressor_array_3_2 level7 Outputs
    //logic [NUM_COLS_LV7:0][NUM_ROWS_LV7/2-1:0] u_ca7_0_out;
    logic [NUM_COLS_LV7:0][1:0] u_ca7_0_out;

    compressor_array_3_2 #(.NUM_ROWS (NUM_ROWS_LV7), .NUM_COLS (NUM_COLS_LV7))
        u_compressor_array_3_2_lv7_0 (.data_in(u_ca7_0_in), .data_out(u_ca7_0_out));

    genvar i_out;
    generate;
        for (i_out = 0; i_out < NUM_ELEMENTS_OUT; i_out++) begin
            assign C[i_out] = u_ca7_0_out[i_out][1];
            assign S[i_out] = u_ca7_0_out[i_out][0];
        end
    endgenerate

/*    
    // compressor_array_3_2 level5 parameter
    localparam NUM_ROWS_LV5 = 3;
    localparam NUM_COLS_LV5 = (NUM_COLS_LV4 + 2 < MAX_COLS)? NUM_COLS_LV4 + 2 : MAX_COLS;

    // compressor_array_3_2 level5 Intputs
    logic [NUM_COLS_LV5-1:0][NUM_ROWS_LV5-1:0] u_ca5_0_in;
    logic [NUM_COLS_LV5-1:0][NUM_ROWS_LV5-1:0] u_ca5_1_in;

    genvar i_5;
    generate;
        for (i_5 = 0; i_5 < NUM_COLS_LV5; i_5++) begin
            assign u_ca5_0_in[i_5] = u_ca4_0_out[i_5];
            assign u_ca5_1_in[i_5] = u_ca4_1_out[i_5];
        end
    endgenerate

    // compressor_array_3_2 level5 Outputs
    logic [NUM_COLS_LV5:0][1:0] u_ca5_0_out;
    logic [NUM_COLS_LV5:0][1:0] u_ca5_1_out;

    compressor_array_3_2 #(.NUM_ROWS (NUM_ROWS_LV5), .NUM_COLS (NUM_COLS_LV5))
        u_compressor_array_3_2_lv5_0 (.data_in(u_ca5_0_in), .data_out(u_ca5_0_out));
    compressor_array_3_2 #(.NUM_ROWS (NUM_ROWS_LV5), .NUM_COLS (NUM_COLS_LV5))
        u_compressor_array_3_2_lv5_1 (.data_in(u_ca5_1_in), .data_out(u_ca5_1_out));


    // compressor_array_6_3 level6 Outputs
    localparam NUM_ROWS_LV6 = 6;
    localparam NUM_COLS_LV6 = NUM_ELEMENTS_OUT;

    // compressor_array_6_3 level6 Intputs
    logic [NUM_COLS_LV6-1:0][NUM_ROWS_LV6-1:0] u_ca6_0_in;
    logic [NUM_COLS_LV6-1:0][1:0] u_ca5_0_temp;
    logic [NUM_COLS_LV6-1:0][1:0] u_ca5_1_temp;

    genvar i_6;
    generate;
        for (i_6 = 0; i_6 < NUM_COLS_LV6; i_6++) begin
            if (i_6 < BIT_LEN_FLAG) begin
                assign u_ca5_0_temp[i_6] = u_ca5_0_out[i_6];
                assign u_ca5_1_temp[i_6] = 2'b0;
            end else if (i_6 > NUM_COLS_LV5+BIT_LEN_FLAG-1) begin
                assign u_ca5_0_temp[i_6] = 2'b0;
                assign u_ca5_1_temp[i_6] = 2'b0;
            end else if (i_6 > NUM_COLS_LV5-1) begin
                assign u_ca5_0_temp[i_6] = 2'b0;
                assign u_ca5_1_temp[i_6] = u_ca5_1_out[i_6-BIT_LEN_FLAG];
            end else begin
                assign u_ca5_0_temp[i_6] = u_ca5_0_out[i_6];
                assign u_ca5_1_temp[i_6] = u_ca5_1_out[i_6-BIT_LEN_FLAG];
            end 
            assign u_ca6_0_in[i_6] = {  u_ca5_0_temp[i_6], 
                                        u_ca5_1_temp[i_6],
                                        2'b0
                                    };
        end
    endgenerate

    // compressor_array_6_3 level6 Outputs
    logic [NUM_COLS_LV6+1:0][NUM_ROWS_LV6/2-1:0] u_ca6_0_out;

     compressor_array_6_3 #(.NUM_ROWS (NUM_ROWS_LV6), .NUM_COLS (NUM_COLS_LV6))
        u_compressor_array_6_3_lv6_0 (.data_in(u_ca6_0_in), .data_out(u_ca6_0_out));


    
    // compressor_array_3_2 level7 parameter
    localparam NUM_ROWS_LV7 = 3;
    localparam NUM_COLS_LV7 = NUM_ELEMENTS_OUT;

    // compressor_array_3_2 level7 Intputs
    logic [NUM_COLS_LV7-1:0][NUM_ROWS_LV7-1:0] u_ca7_0_in;

    genvar i_7;
    generate;
        for (i_7 = 0; i_7 < NUM_COLS_LV7; i_7++) begin
            assign u_ca7_0_in[i_7] = u_ca6_0_out[i_7];
        end
    endgenerate

    // compressor_array_3_2 level7 Outputs
    //logic [NUM_COLS_LV7:0][NUM_ROWS_LV7/2-1:0] u_ca7_0_out;
    logic [NUM_COLS_LV7:0][1:0] u_ca7_0_out;

    compressor_array_3_2 #(.NUM_ROWS (NUM_ROWS_LV7), .NUM_COLS (NUM_COLS_LV7))
        u_compressor_array_3_2_lv7_0 (.data_in(u_ca7_0_in), .data_out(u_ca7_0_out));

    genvar i_out;
    generate;
        for (i_out = 0; i_out < NUM_ELEMENTS_OUT; i_out++) begin
            assign C[i_out] = u_ca7_0_out[i_out][1];
            assign S[i_out] = u_ca7_0_out[i_out][0];
        end
    endgenerate
*/
endmodule