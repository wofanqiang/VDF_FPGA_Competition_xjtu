module xpb_9
(
    input [8:0] data_in,

    output [1023:0] data_out_0,
    output [1023:0] data_out_1
);


xpb_5_0_c  u_xpb_5_0_c (
.data_in( data_in[4 : 0]),
.data_out(data_out_0)
);

xpb_4_5  u_xpb_4_5 (
.data_in( data_in[8 : 5]),
.data_out(data_out_1)
);


endmodule