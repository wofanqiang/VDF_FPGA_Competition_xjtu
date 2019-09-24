module compressor_513_152
(
    input  [512:0] d_in,

    output [151:0] d_out
);



//--compressor_array input and output----------------------

wire [26:0] u_c_in[0:18];
wire [7:0] u_c_out[0:18];


//---------------------------------------------------------



//--compressor_array---------------------------------------

genvar c_i;
generate
    for(c_i = 0; c_i < 19; c_i = c_i + 1) begin:c_513_152
        assign u_c_in[c_i] = d_in[27*(c_i+1)-1:27*c_i];
        compressor_27_8 u_ca_27_8(.d_in(u_c_in[c_i]), .d_out(u_c_out[c_i]));
    end
endgenerate

//---------------------------------------------------------



//--output-------------------------------------------------

assign d_out[18:0] = {u_c_out[0][0:0],u_c_out[1][0:0],u_c_out[2][0:0],u_c_out[3][0:0],u_c_out[4][0:0],u_c_out[5][0:0],u_c_out[6][0:0],u_c_out[7][0:0],u_c_out[8][0:0],u_c_out[9][0:0],u_c_out[10][0:0],u_c_out[11][0:0],u_c_out[12][0:0],u_c_out[13][0:0],u_c_out[14][0:0],u_c_out[15][0:0],u_c_out[16][0:0],u_c_out[17][0:0],u_c_out[18][0:0]};
assign d_out[75:19] = {u_c_out[0][3:1],u_c_out[1][3:1],u_c_out[2][3:1],u_c_out[3][3:1],u_c_out[4][3:1],u_c_out[5][3:1],u_c_out[6][3:1],u_c_out[7][3:1],u_c_out[8][3:1],u_c_out[9][3:1],u_c_out[10][3:1],u_c_out[11][3:1],u_c_out[12][3:1],u_c_out[13][3:1],u_c_out[14][3:1],u_c_out[15][3:1],u_c_out[16][3:1],u_c_out[17][3:1],u_c_out[18][3:1]};
assign d_out[132:76] = {u_c_out[0][6:4],u_c_out[1][6:4],u_c_out[2][6:4],u_c_out[3][6:4],u_c_out[4][6:4],u_c_out[5][6:4],u_c_out[6][6:4],u_c_out[7][6:4],u_c_out[8][6:4],u_c_out[9][6:4],u_c_out[10][6:4],u_c_out[11][6:4],u_c_out[12][6:4],u_c_out[13][6:4],u_c_out[14][6:4],u_c_out[15][6:4],u_c_out[16][6:4],u_c_out[17][6:4],u_c_out[18][6:4]};
assign d_out[151:133] = {u_c_out[0][7:7],u_c_out[1][7:7],u_c_out[2][7:7],u_c_out[3][7:7],u_c_out[4][7:7],u_c_out[5][7:7],u_c_out[6][7:7],u_c_out[7][7:7],u_c_out[8][7:7],u_c_out[9][7:7],u_c_out[10][7:7],u_c_out[11][7:7],u_c_out[12][7:7],u_c_out[13][7:7],u_c_out[14][7:7],u_c_out[15][7:7],u_c_out[16][7:7],u_c_out[17][7:7],u_c_out[18][7:7]};

//---------------------------------------------------------


endmodule