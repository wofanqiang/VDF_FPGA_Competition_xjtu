module compressor_54_16
(
    input  [53:0] d_in,

    output [15:0] d_out
);



//--compressor_array input and output----------------------

wire [26:0] u_c_in[0:1];
wire [7:0] u_c_out[0:1];


//---------------------------------------------------------



//--compressor_array---------------------------------------

genvar c_i;
generate
    for(c_i = 0; c_i < 2; c_i = c_i + 1) begin:c_54_16
        assign u_c_in[c_i] = d_in[27*(c_i+1)-1:27*c_i];
        compressor_27_8 u_ca_27_8(.d_in(u_c_in[c_i]), .d_out(u_c_out[c_i]));
    end
endgenerate

//---------------------------------------------------------



//--output-------------------------------------------------

assign d_out[1:0] = {u_c_out[0][0:0],u_c_out[1][0:0]};
assign d_out[7:2] = {u_c_out[0][3:1],u_c_out[1][3:1]};
assign d_out[13:8] = {u_c_out[0][6:4],u_c_out[1][6:4]};
assign d_out[15:14] = {u_c_out[0][7:7],u_c_out[1][7:7]};

//---------------------------------------------------------


endmodule