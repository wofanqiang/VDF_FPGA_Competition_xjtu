module compress_3_2
(
    input logic [2:0] data_in,
    output logic [1:0] data_out
);


always_comb begin
    case(data_in)
        3'd0:  data_out = 2'd0;
        3'd1:  data_out = 2'd1;
        3'd2:  data_out = 2'd1;
        3'd3:  data_out = 2'd2;
        3'd4:  data_out = 2'd1;
        3'd5:  data_out = 2'd2;
        3'd6:  data_out = 2'd2;
        3'd7:  data_out = 2'd3;
    endcase

end



endmodule