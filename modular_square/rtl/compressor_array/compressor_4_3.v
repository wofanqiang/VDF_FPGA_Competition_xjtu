module compressor_4_3
(
    input [4:1] d_in, 
    output [3:1] d_out //输出为{2^1, 2^0, 2^0}
); 

wire [4:1] u_c_in;
wire [1:0] u_c_out;

assign u_c_in = d_in;

compressor_3_2 u_ca_3_2(.d_in(u_c_in[4:2]), .d_out(u_c_out));

assign d_out = {u_c_out, d_in[1]};


endmodule