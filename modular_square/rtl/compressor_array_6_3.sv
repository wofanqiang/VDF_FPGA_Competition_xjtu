/*

*/



module compressor_array_6_3 #(
    parameter NUM_ROWS = 60,
    parameter NUM_COLS = 2091,
    localparam NUM_ELEMENTS = NUM_ROWS/6
)
(
    input logic [NUM_COLS-1:0][NUM_ROWS-1:0] data_in,
    output logic [NUM_COLS+1:0][NUM_ROWS/2-1:0] data_out
);

//compressor_array
    logic [NUM_COLS+1:0][NUM_ROWS/2-1:0] u_ca_out;

    genvar i;
    generate
        for (i=0; i < NUM_COLS; i++) begin
            compressor_col_6_3 #(.NUM_ELEMENTS(NUM_ELEMENTS)) 
                u_compressor_col(
                    .data_in(data_in[i]),
                    .data_out(u_ca_out[i])
                );
        end
    endgenerate



    assign data_out[0] =        {  
                                    u_ca_out[0][NUM_ELEMENTS-1:0],
                                    {NUM_ELEMENTS{1'b0}}, 
                                    {NUM_ELEMENTS{1'b0}}
                                };

    assign data_out[1] =        {
                                    u_ca_out[1][NUM_ELEMENTS-1:0], 
                                    u_ca_out[0][2*NUM_ELEMENTS-1:NUM_ELEMENTS], 
                                    {NUM_ELEMENTS{1'b0}}
                                };

    assign data_out[NUM_COLS+1] = {
                                    u_ca_out[NUM_COLS-1][3*NUM_ELEMENTS-1:2*NUM_ELEMENTS],
                                    {NUM_ELEMENTS{1'b0}}, 
                                    {NUM_ELEMENTS{1'b0}}
                                };

    assign data_out[NUM_COLS] = {
                                    u_ca_out[NUM_COLS-1][2*NUM_ELEMENTS-1:NUM_ELEMENTS], 
                                    u_ca_out[NUM_COLS-2][3*NUM_ELEMENTS-1:2*NUM_ELEMENTS],
                                    {NUM_ELEMENTS{1'b0}}
                                };

    genvar j;
    generate
        for (j=2; j < NUM_COLS; j++) begin
            assign data_out[j] = {
                                    u_ca_out[j][NUM_ELEMENTS-1:0], 
                                    u_ca_out[j-1][2*NUM_ELEMENTS-1:NUM_ELEMENTS],
                                    u_ca_out[j-2][3*NUM_ELEMENTS-1:2*NUM_ELEMENTS]
                                };
        end
    endgenerate


endmodule




module compressor_col_6_3 #(
    parameter NUM_ELEMENTS = 10
)
(
    input logic [NUM_ELEMENTS*6-1:0] data_in,
    output logic [NUM_ELEMENTS*3-1:0]data_out
);

    //compressor_array
    genvar i;
    generate
        for (i=0; i < NUM_ELEMENTS; i++) begin
            compress_6_3 u_compress_6_3(
                            .data_in(data_in[6*(i+1)-1: 6*i]), 
                            .data_out({data_out[i + NUM_ELEMENTS*2], data_out[i + NUM_ELEMENTS], data_out[i]})
                            );
        end
    endgenerate


endmodule