module square
#(
    parameter NUM_ELEMENTS          = 62,
    parameter BIT_LEN               = 18,
    parameter WORD_LEN              = 17,
    localparam NUM_ELEMENTS_OUT     = 2112
)
(
    input logic [BIT_LEN-1:0] A[NUM_ELEMENTS],
    output logic [NUM_ELEMENTS_OUT-1:0] C,
    output logic [NUM_ELEMENTS_OUT-1:0] S
);

    // dsp_array 0 Outputs
    logic [NUM_ELEMENTS-1:0][BIT_LEN*2-1:0]  u_da0_out[NUM_ELEMENTS];

    dsp_array #(.NUM_ELEMENTS(NUM_ELEMENTS), .BIT_LEN(BIT_LEN))
        u_dsp_array_0(.A(A), .mul_result(u_da0_out));

    

    // format u_da0_out
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0] u_da0_temp0[NUM_ELEMENTS];
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0] u_da0_temp1[NUM_ELEMENTS];
    //logic [U0_NUM_ELEMENTS-1:0][U0_MUL_OUT_BIT_LEN-2*WORD_LEN-1:0] temp2[U0_NUM_ELEMENTS];
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0] u_da0_temp2[NUM_ELEMENTS];

    genvar ii,jj;
    generate;
        for (ii = 0; ii < NUM_ELEMENTS; ii++) begin
            for (jj = 0; jj < NUM_ELEMENTS; jj++) begin
                assign u_da0_temp0[ii][jj] = u_da0_out[ii][jj][WORD_LEN-1:0];
                assign u_da0_temp1[ii][jj] = u_da0_out[ii][jj][WORD_LEN*2-1:WORD_LEN];
                assign u_da0_temp2[ii][jj] = {{(WORD_LEN*3-BIT_LEN*2){1'b0}}, u_da0_out[ii][jj][BIT_LEN*2-1:WORD_LEN*2]};
            end
        end
    endgenerate

    // row_to_col parameter
    localparam INIT_NUMS_COLS = WORD_LEN*(NUM_ELEMENTS*2-1);

    // row_to_col Outputs
    logic [INIT_NUMS_COLS-1:0][NUM_ELEMENTS-1:0] u_rtc0_out;
    logic [INIT_NUMS_COLS-1:0][NUM_ELEMENTS-1:0] u_rtc1_out;
    logic [INIT_NUMS_COLS-1:0][NUM_ELEMENTS-1:0] u_rtc2_out;

    row_to_col #(.BIT_LEN(WORD_LEN),.NUM_ELEMENTS(NUM_ELEMENTS))
        u_row_to_col_0 (.row(u_da0_temp0), .col(u_rtc0_out));

    row_to_col #(.BIT_LEN(WORD_LEN),.NUM_ELEMENTS(NUM_ELEMENTS))
        u_row_to_col_1 (.row(u_da0_temp1), .col(u_rtc1_out));

    row_to_col #(.BIT_LEN(WORD_LEN),.NUM_ELEMENTS(NUM_ELEMENTS))
        u_row_to_col_2 (.row(u_da0_temp2), .col(u_rtc2_out));
    

    compressor_array_square #(.WORD_LEN(WORD_LEN), .NUM_ELEMENTS(NUM_ELEMENTS))
        u_compressor_array (
                            .cols0(u_rtc0_out),
                            .cols1(u_rtc1_out),
                            .cols2(u_rtc2_out),
                            .C(C),
                            .S(S)
                            );
    

endmodule

