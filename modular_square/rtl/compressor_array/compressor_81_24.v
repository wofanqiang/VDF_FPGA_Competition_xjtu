module compressor_81_24
(
    input  [80:0] d_in,

    output [23:0] d_out
);



//--compressor_array input and output----------------------

wire [26:0] u_c_in[0:2];
wire [7:0] u_c_out[0:2];


//---------------------------------------------------------



//--compressor_array---------------------------------------

genvar c_i;
generate
    for(c_i = 0; c_i < 3; c_i = c_i + 1) begin:c_81_24
        assign u_c_in[c_i] = d_in[27*(c_i+1)-1:27*c_i];
        compressor_27_8 u_ca_27_8(.d_in(u_c_in[c_i]), .d_out(u_c_out[c_i]));
    end
endgenerate

//---------------------------------------------------------



//--output-------------------------------------------------

assign d_out[2:0] = {u_c_out[0][0:0],u_c_out[1][0:0],u_c_out[2][0:0]};
assign d_out[11:3] = {u_c_out[0][3:1],u_c_out[1][3:1],u_c_out[2][3:1]};
assign d_out[20:12] = {u_c_out[0][6:4],u_c_out[1][6:4],u_c_out[2][6:4]};
assign d_out[23:21] = {u_c_out[0][7:7],u_c_out[1][7:7],u_c_out[2][7:7]};

//---------------------------------------------------------


endmodule