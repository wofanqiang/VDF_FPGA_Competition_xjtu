/*
将a划分为62段，每段17b。
a = |a[61], a[61], ..., a[1], a[0]|

DSP输入两个18b，输出一个36b。总计需要使用d个DSP进行平方运算。
d = 62 + 61 + 60 + ... + 3 + 2 + 1 = 1953





使用合并数组 [61:0][35:0] mul_result[62]保存DSP的输出结果。
             j                     i

|a[j]a[0],   a[j-1]a[0], ...,   a[2]a[0]  , a[1]a[0]  , a[0]a[0]  |
|a[j]a[1],   a[n-1]a[1], ...,   a[2]a[1]  , a[1]a[1]  , a[0]a[1]  |
|a[j]a[2],   a[n-1]a[2], ...,   a[2]a[2]  , a[1]a[2]  , a[0]a[2]  |
... ... ... ... ...
|a[j]a[i-1], a[j-1]a[i-1], ..., a[2]a[i-1], a[1]a[i-1], a[0]a[i-1]|
|a[j]a[i],   a[j-1]a[i]  , ..., a[2]a[i]  , a[1]a[i]  , a[0]a[i]  |


*/




module dsp_array
   #(
    parameter NUM_ELEMENTS    = 62,
    parameter BIT_LEN         = 18,
    localparam MUL_OUT_BIT_LEN  = (2*BIT_LEN)                       // 36b
    )
   (
    input [BIT_LEN-1:0] A[NUM_ELEMENTS],      //  62 x 18b
	output [NUM_ELEMENTS-1:0][MUL_OUT_BIT_LEN-1:0]  mul_result[NUM_ELEMENTS]
   );

	genvar i,j;
	generate
	    for(i = 0; i < NUM_ELEMENTS; i = i + 1)begin:dsp_array_i
	        for(j = 0; j < NUM_ELEMENTS; j = j + 1)begin:dsp_array_j
	            if(j >= i) begin
	                dsp_multiplier #(.A_BIT_LEN(BIT_LEN), 
                                     .B_BIT_LEN(BIT_LEN)) 
                    u_dsp_multiplier(
                                .A(A[i][BIT_LEN-1:0]),
                                .B(A[j][BIT_LEN-1:0]),
                                .P(mul_result[i][j])
                                );
	            end
	            else begin
	                assign mul_result[i][j] = mul_result[j][i];
	            end
	        end
	    end
	endgenerate


endmodule


module dsp_multiplier
   #(
    parameter int A_BIT_LEN       = 17,
    parameter int B_BIT_LEN       = 17,
    parameter int MUL_OUT_BIT_LEN = A_BIT_LEN + B_BIT_LEN
    )
   (
    input  logic [A_BIT_LEN-1:0]       A,
    input  logic [B_BIT_LEN-1:0]       B,
    output logic [MUL_OUT_BIT_LEN-1:0] P
   );

    assign P[MUL_OUT_BIT_LEN-1:0] = A[A_BIT_LEN-1:0] * B[B_BIT_LEN-1:0];

endmodule

