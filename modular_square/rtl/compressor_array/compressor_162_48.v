module compressor_162_48
(
    input  [161:0] d_in,

    output [47:0] d_out
);



//--compressor_array input and output----------------------

wire [26:0] u_c_in[0:5];
wire [7:0] u_c_out[0:5];


//---------------------------------------------------------



//--compressor_array---------------------------------------

genvar c_i;
generate
    for(c_i = 0; c_i < 6; c_i = c_i + 1) begin:c_162_48
        assign u_c_in[c_i] = d_in[27*(c_i+1)-1:27*c_i];
        compressor_27_8 u_ca_27_8(.d_in(u_c_in[c_i]), .d_out(u_c_out[c_i]));
    end
endgenerate

//---------------------------------------------------------



//--output-------------------------------------------------

assign d_out[5:0] = {u_c_out[0][0:0],u_c_out[1][0:0],u_c_out[2][0:0],u_c_out[3][0:0],u_c_out[4][0:0],u_c_out[5][0:0]};
assign d_out[23:6] = {u_c_out[0][3:1],u_c_out[1][3:1],u_c_out[2][3:1],u_c_out[3][3:1],u_c_out[4][3:1],u_c_out[5][3:1]};
assign d_out[41:24] = {u_c_out[0][6:4],u_c_out[1][6:4],u_c_out[2][6:4],u_c_out[3][6:4],u_c_out[4][6:4],u_c_out[5][6:4]};
assign d_out[47:42] = {u_c_out[0][7:7],u_c_out[1][7:7],u_c_out[2][7:7],u_c_out[3][7:7],u_c_out[4][7:7],u_c_out[5][7:7]};

//---------------------------------------------------------


endmodule