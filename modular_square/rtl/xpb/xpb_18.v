module xpb_18
(
    input [8:0] data_in0,
    input [8:0] data_in1,

    output [1023:0] data_out_0,
    output [1023:0] data_out_1,
    output [1023:0] data_out_2,
    output [1023:0] data_out_3
);


xpb_9  u0_xpb_9 (
.data_in(       data_in0    ),
.data_out_0(    data_out_0  ),
.data_out_1(    data_out_1  )
);

xpb_9  u1_xpb_9 (
.data_in(       data_in1      ),
.data_out_0(    data_out_2 ),
.data_out_1(    data_out_3 )
);


endmodule