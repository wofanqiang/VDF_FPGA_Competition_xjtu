module compressor_243_72
(
    input  [242:0] d_in,

    output [71:0] d_out
);



//--compressor_array input and output----------------------

wire [26:0] u_c_in[0:8];
wire [7:0] u_c_out[0:8];


//---------------------------------------------------------



//--compressor_array---------------------------------------

genvar c_i;
generate
    for(c_i = 0; c_i < 9; c_i = c_i + 1) begin:c_243_72
        assign u_c_in[c_i] = d_in[27*(c_i+1)-1:27*c_i];
        compressor_27_8 u_ca_27_8(.d_in(u_c_in[c_i]), .d_out(u_c_out[c_i]));
    end
endgenerate

//---------------------------------------------------------



//--output-------------------------------------------------

assign d_out[8:0] = {u_c_out[0][0:0],u_c_out[1][0:0],u_c_out[2][0:0],u_c_out[3][0:0],u_c_out[4][0:0],u_c_out[5][0:0],u_c_out[6][0:0],u_c_out[7][0:0],u_c_out[8][0:0]};
assign d_out[35:9] = {u_c_out[0][3:1],u_c_out[1][3:1],u_c_out[2][3:1],u_c_out[3][3:1],u_c_out[4][3:1],u_c_out[5][3:1],u_c_out[6][3:1],u_c_out[7][3:1],u_c_out[8][3:1]};
assign d_out[62:36] = {u_c_out[0][6:4],u_c_out[1][6:4],u_c_out[2][6:4],u_c_out[3][6:4],u_c_out[4][6:4],u_c_out[5][6:4],u_c_out[6][6:4],u_c_out[7][6:4],u_c_out[8][6:4]};
assign d_out[71:63] = {u_c_out[0][7:7],u_c_out[1][7:7],u_c_out[2][7:7],u_c_out[3][7:7],u_c_out[4][7:7],u_c_out[5][7:7],u_c_out[6][7:7],u_c_out[7][7:7],u_c_out[8][7:7]};

//---------------------------------------------------------


endmodule