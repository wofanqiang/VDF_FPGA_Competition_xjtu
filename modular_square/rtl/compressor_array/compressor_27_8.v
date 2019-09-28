module compressor_27_8
(
    input [26:0] d_in,
    output [7:0] d_out
);

//--level 1----------------------------------
wire [26:0] lv1_in_0 = d_in;

wire [2:0] cp3_lv1_0_in[0:8];
wire [1:0] cp3_lv1_0_out[0:8];

wire [8:0] lv1_out_0;
wire [8:0] lv1_out_1;

genvar lv1_0;
generate
    for(lv1_0 = 0; lv1_0 < 9; lv1_0 = lv1_0 + 1) begin:lv1_0_arry
        assign cp3_lv1_0_in[lv1_0] = lv1_in_0[(lv1_0*3+2):(lv1_0*3)];//给压缩器分配输入，3位
        compressor_3_2 cp3_lv1_0(.d_in(cp3_lv1_0_in[lv1_0]), .d_out(cp3_lv1_0_out[lv1_0]));
        assign lv1_out_0[lv1_0] = cp3_lv1_0_out[lv1_0][0];//设置lv1的输出
        assign lv1_out_1[lv1_0] = cp3_lv1_0_out[lv1_0][1];
    end
endgenerate
//-------------------------------------------

//--level 2----------------------------------
wire [8:0] lv2_in_0 = lv1_out_0;
wire [8:0] lv2_in_1 = lv1_out_1;

wire [2:0] co3_lv2_0_in[0:2];
wire [1:0] co3_lv2_0_out[0:2];

wire [2:0] co3_lv2_1_in[0:2];
wire [1:0] co3_lv2_1_out[0:2];

wire [2:0] lv2_out_0;
wire [5:0] lv2_out_1;
wire [2:0] lv2_out_2;

genvar lv2_0;
generate
    for(lv2_0 = 0; lv2_0 < 3; lv2_0 = lv2_0 + 1) begin:co3_lv2_0_arry
    assign co3_lv2_0_in[lv2_0] = lv2_in_0[(lv2_0*3+2):(lv2_0*3)];
    compressor_3_2 cp3_lv2_0(.d_in(co3_lv2_0_in[lv2_0]), .d_out(co3_lv2_0_out[lv2_0]));
    assign lv2_out_0[lv2_0] = co3_lv2_0_out[lv2_0][0];
    assign lv2_out_1[lv2_0] = co3_lv2_0_out[lv2_0][1];
    end
endgenerate

genvar lv2_1;
generate
    for(lv2_1 = 0; lv2_1 < 3; lv2_1 = lv2_1 + 1) begin:co3_lv2_1_arry
    assign co3_lv2_1_in[lv2_1] = lv2_in_1[(lv2_1*3+2):(lv2_1*3)];
    compressor_3_2 cp3_lv2_1(.d_in(co3_lv2_1_in[lv2_1]), .d_out(co3_lv2_1_out[lv2_1]));
    assign lv2_out_1[3+lv2_1] = co3_lv2_1_out[lv2_1][0];
    assign lv2_out_2[lv2_1] = co3_lv2_1_out[lv2_1][1];
    end
endgenerate

//-------------------------------------------


//--level 3----------------------------------
wire [2:0] lv3_in_0 = lv2_out_0;
wire [5:0] lv3_in_1 = lv2_out_1;
wire [2:0] lv3_in_2 = lv2_out_2;

wire [2:0] co3_lv3_0_in = lv3_in_0;
wire [1:0] co3_lv3_0_out;

wire [2:0] co3_lv3_1_in[0:1];
wire [1:0] co3_lv3_1_out[0:1];

wire [2:0] co3_lv3_2_in = lv3_in_2;
wire [1:0] co3_lv3_2_out;

wire lv3_out_0 = co3_lv3_0_out[0];
wire [2:0] lv3_out_1 = {co3_lv3_1_out[1][0], co3_lv3_1_out[0][0], co3_lv3_0_out[1]};
wire [2:0] lv3_out_2 = {co3_lv3_2_out[0], co3_lv3_1_out[1][1], co3_lv3_1_out[0][1]};
wire lv3_out_3 = co3_lv3_2_out[1];

compressor_3_2 cp3_lv3_0(.d_in(co3_lv3_0_in), .d_out(co3_lv3_0_out));

genvar lv3_1;
generate
    for(lv3_1 = 0; lv3_1 < 2; lv3_1 = lv3_1 + 1) begin:co3_lv3_1_arry
    assign co3_lv3_1_in[lv3_1] = lv3_in_1[(lv3_1*3+2):(lv3_1*3)];
    compressor_3_2 cp3_lv3_1(.d_in(co3_lv3_1_in[lv3_1]), .d_out(co3_lv3_1_out[lv3_1]));
    end
endgenerate

compressor_3_2 cp3_lv3_2(.d_in(co3_lv3_2_in), .d_out(co3_lv3_2_out));

//-------------------------------------------



//--output----------------------------------
assign d_out = {lv3_out_3, lv3_out_2, lv3_out_1, lv3_out_0};

//-------------------------------------------
endmodule