module compressor_3_2
(
    input [3:1] d_in, 
    output [2:1] d_out //输出为{2^1, 2^0}
); 

reg [2:1] count; 

assign d_out = count; 

always@(*) begin
    case(d_in)
    3'b000 : count = 2'd0;
    3'b001 : count = 2'd1;
    3'b010 : count = 2'd1;
    3'b011 : count = 2'd2;
    3'b100 : count = 2'd1;
    3'b101 : count = 2'd2;
    3'b110 : count = 2'd2;
    3'b111 : count = 2'd3;
    endcase
end

endmodule