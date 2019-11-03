/*
每个DSP的结果分为三部分[35:34], [33:17], [16:0]。

输入DSP运算的结果，对这些结果进行相应的权值移位，然后进行行列转置。


input:  
    |a[j]a[0],   a[j-1]a[0], ...,   a[2]a[0]  , a[1]a[0]  , a[0]a[0]  |
    |a[j]a[1],   a[n-1]a[1], ...,   a[2]a[1]  , a[1]a[1]  , a[0]a[1]  |
    |a[j]a[2],   a[n-1]a[2], ...,   a[2]a[2]  , a[1]a[2]  , a[0]a[2]  |
    ... ... ... ... ...
    |a[j]a[i-1], a[j-1]a[i-1], ..., a[2]a[i-1], a[1]a[i-1], a[0]a[i-1]|
    |a[j]a[i],   a[j-1]a[i]  , ..., a[2]a[i]  , a[1]a[i]  , a[0]a[i]  |

weighting：
    |a[j]a[0],   a[j-1]a[0], ...,   a[2]a[0]  , a[1]a[0]  , a[0]a[0]  |
    |a[j]a[1],   a[n-1]a[1], ...,   a[2]a[1]  , a[1]a[1]  , a[0]a[1]  | << 17
    |a[j]a[2],   a[n-1]a[2], ...,   a[2]a[2]  , a[1]a[2]  , a[0]a[2]  | << 17x2
    ... ... ... ... ...
    |a[j]a[i-1], a[j-1]a[i-1], ..., a[2]a[i-1], a[1]a[i-1], a[0]a[i-1]| << 17x60
    |a[j]a[i],   a[j-1]a[i]  , ..., a[2]a[i]  , a[1]a[i]  , a[0]a[i]  | << 17x61

output: 
    |       0|         0|... ...|a[2]a[0]|a[1]a[0]|a[0]a[0]|
    |       0|         0|... ...|a[1]a[1]|a[0]a[1]|       0|
    |       0|         0|... ...|a[0]a[2]|       0|       0|
    ... ...   ... ...    ... ... ... ...  ... ...  ... ...
    |a[j]a[i]|a[j-1]a[i]|... ...|       0|       0|       0|
      col_61    col_60            col_2     col_1    col_0

*/




module row_to_col
#(
    parameter BIT_LEN = 17,
    parameter NUM_ELEMENTS = 62,
    localparam BIT_LEN_IN = BIT_LEN,
    localparam BIT_LEN_OUT = NUM_ELEMENTS,
    localparam NUM_ELEMENTS_OUT = BIT_LEN_IN * (NUM_ELEMENTS * 2 - 1)
)
(
    input logic [NUM_ELEMENTS-1:0][BIT_LEN_IN-1:0] row[NUM_ELEMENTS],
    output logic [NUM_ELEMENTS_OUT-1:0] [BIT_LEN_OUT-1:0] col
);


    //logic [BIT_LEN_IN * NUM_ELEMENTS-1:0] temp_array[NUM_ELEMENTS];

    //genvar i,j;
    //generate
    //    for ( i = 0; i < NUM_ELEMENTS; i++) begin
    //        for ( j = 0; j < NUM_ELEMENTS; j++) begin
    //            assign temp_array[i][BIT_LEN_IN*(j+1)-1 : BIT_LEN_IN*j] = row[(i*NUM_ELEMENTS) + j][BIT_LEN_IN-1 : 0];
    //        end
    //    end
    //endgenerate
    

    logic [NUM_ELEMENTS_OUT-1:0] extend_array[BIT_LEN_OUT];

    genvar k;
    generate
        for (k = 0; k < NUM_ELEMENTS; k++) begin
            localparam ZERO_NUM = BIT_LEN_IN*(NUM_ELEMENTS-1-k);
            localparam ZERO_NUM_ = (BIT_LEN_IN*k);
            if (k == 0) begin
                assign extend_array[k] = {{ZERO_NUM{1'b0}}, row[k]};
            end else if (k == NUM_ELEMENTS - 1) begin
                assign extend_array[k] = {row[k], {ZERO_NUM_{1'b0}}};
            end else begin
                assign extend_array[k] = {{ZERO_NUM{1'b0}}, row[k], {ZERO_NUM_{1'b0}}};
            end
        end
    endgenerate


    genvar m,n;
    generate
        for ( m = 0; m < NUM_ELEMENTS_OUT; m = m + 1)begin
            for ( n = 0; n < BIT_LEN_OUT; n = n + 1)begin
                assign col[m][n] = extend_array[n][m];
            end
        end
    endgenerate

endmodule