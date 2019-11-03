/*
                |---27b---|---27b---|---27b---| ... |---27b---|---27b---|
               x                                         `       |--18b-|
        --------------------------------------------------------------------
                                                         |------45b-----|
                                               |------45b-----|
                                       ...
                     |------45b-----|
           |------45b-----|
        --------------------------------------------------------------------
xpb0            |---27b---|---27b---|---27b---| ... |---27b---|---27b---|
xpb1  |   --18b-|   --18b-|   --18b-|   --18b-| ... |   --18b-|     
*/

//Q:xpb结果出来后似乎没有对xpb[1]进行移位

module xpb
#(
    parameter BIT_LEN_FLAG  = 18,
    parameter BIT_LEN_XPB   = 27,
    parameter NUM_XPB       = 38
)
(
    input logic [BIT_LEN_FLAG-1:0] flag,
    input logic [NUM_XPB-1:0][BIT_LEN_XPB-1:0] xpb_prime,
    output logic [NUM_XPB-1:0][BIT_LEN_XPB-1:0] xpb0,
    output logic [NUM_XPB-1:0][BIT_LEN_XPB-1:0] xpb1
);

    logic [NUM_XPB-1:0][BIT_LEN_FLAG+BIT_LEN_XPB-1:0] weighted_xpb;

/*
    genvar i;
    generate;
        for (i=0; i<NUM_XPB; i++) begin
            xbip_dsp48_macro_0 u_dsp_multiplier(
                                .A(xpb_prime[i]),
                                .B(flag),
                                .P(weighted_xpb[i])
                                ); 
            assign xpb0[i][BIT_LEN_XPB-1:0] = weighted_xpb[i][BIT_LEN_XPB-1:0];
            assign xpb1[i][BIT_LEN_XPB-1:0] = {{(BIT_LEN_XPB-BIT_LEN_FLAG){1'b0}}, 
                                                weighted_xpb[i][BIT_LEN_FLAG+BIT_LEN_XPB-1:BIT_LEN_XPB]};
        end
    endgenerate
*/

    genvar i;
    generate;
        for (i=0; i<NUM_XPB; i++) begin
        //`ifdef FOR_SIM
        //    multiplier_27_18_sim
        //`else 
        //    multiplier_27_18
        //`endif
            multiplier_27_18
                u_dsp_multiplier(
                                .A(xpb_prime[i]),
                                .B(flag),
                                .P(weighted_xpb[i])
                                ); 
            assign xpb0[i][BIT_LEN_XPB-1:0] = weighted_xpb[i][BIT_LEN_XPB-1:0];
            assign xpb1[i][BIT_LEN_XPB-1:0] = {{(BIT_LEN_XPB-BIT_LEN_FLAG){1'b0}}, 
                                                weighted_xpb[i][BIT_LEN_FLAG+BIT_LEN_XPB-1:BIT_LEN_XPB]};
        end
    endgenerate

endmodule



//module multiplier_27_18_sim
//   (
//    input  logic [26:0]       A,
//    input  logic [17:0]       B,
//    output logic [44:0]       P
//   );
//
//    assign P = A * B;
//
//endmodule


//(* x_core_info = "xbip_dsp48_macro_v3_0_16,Vivado 2018.3" *)
module multiplier_27_18
(
    input  logic [26:0]       A,
    input  logic [17:0]       B,
    output logic [44:0]       P
);


//xbip_dsp48_macro_0 u_dsp_multiplier(.A(A), .B(B), .P(P));
logic [43:0] P_temp;

assign P_temp = A[25:0] * B;
assign P = (A[26])? P_temp + (B<<26) : P_temp;

endmodule