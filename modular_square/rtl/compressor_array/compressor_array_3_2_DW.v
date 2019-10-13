module compressor_array_3_2_DW #(parameter DW = 8)
(
	
  	input  [DW-1 : 0] d_in0,
	input  [DW-1 : 0] d_in1,
	input  [DW-1 : 0] d_in2,
	output [DW-1 : 0] d_out_c, 
	output [DW-1 : 0] d_out_s
);

  	genvar i;
  	generate
  		for (i=0; i<DW; i=i+1) begin:cp32_array0
  	  		compressor_3_2 u_cp_3_2(.d_in({d_in0[i], d_in1[i], d_in2[i]}), .d_out({d_out_c[i], d_out_s[i]}));
  		end
  	endgenerate

endmodule 