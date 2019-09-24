module compressor_18_12
(
    input  [17:0] d_in,

    output [11:0] d_out
);



//--compressor_array input and output----------------------

wire [2:0] u_c_in[0:5];
wire [1:0] u_c_out[0:5];


//---------------------------------------------------------



//--compressor_array---------------------------------------

genvar c_i;
generate
    for(c_i = 0; c_i < 6; c_i = c_i + 1) begin:c_18_12
        assign u_c_in[c_i] = d_in[3*(c_i+1)-1:3*c_i];
        compressor_3_2 u_ca_3_2(.d_in(u_c_in[c_i]), .d_out(u_c_out[c_i]));
    end
endgenerate

//---------------------------------------------------------



//--output-------------------------------------------------

assign d_out[5:0] = {u_c_out[0][0:0],u_c_out[1][0:0],u_c_out[2][0:0],u_c_out[3][0:0],u_c_out[4][0:0],u_c_out[5][0:0]};
assign d_out[11:6] = {u_c_out[0][1:1],u_c_out[1][1:1],u_c_out[2][1:1],u_c_out[3][1:1],u_c_out[4][1:1],u_c_out[5][1:1]};

//---------------------------------------------------------


endmodule