
module modular_square_1_cycle
#(
    parameter NUM_ELEMENTS          = 62,
    parameter BIT_LEN               = 18,
    parameter WORD_LEN              = 17
)
(
    input clk,
    input rst,
    input start,
    input logic [BIT_LEN-1:0] A[NUM_ELEMENTS],
    output valid,
    output logic [BIT_LEN-1:0] ms[NUM_ELEMENTS]
);

    localparam LOOPS = 2**30;

    localparam IDLE         = 4'b0001;
    localparam TRANS_DATA   = 4'b0010;
    localparam CALCULATE    = 4'b0100;
    localparam FINISH       = 4'b1000;

    logic [31:0] counter;
    logic reg_start;
    logic reg_valid;

    logic [BIT_LEN-1:0] reg_A[NUM_ELEMENTS];
    logic [BIT_LEN-1:0] u_ms[NUM_ELEMENTS];

    logic [3:0] state_current;
    logic [3:0] state_next;


    always@(posedge clk) begin
        if(rst) begin 
            state_current <= IDLE;
        end
        else begin
            state_current <= state_next;
        end
    end



    always@(*)begin
        case(state_current)
        IDLE: 
            begin
                if(reg_start)
                    state_next <= TRANS_DATA;
                else
                    state_next <= IDLE;
            end

        TRANS_DATA: 
            begin
                state_next <= CALCULATE;
            end

        CALCULATE:
            begin 
                if(counter < LOOPS) state_next <= CALCULATE;
                else state_next <= FINISH;
            end

        FINISH: 
            begin
                state_next <= IDLE;
            end

        default: 
            begin
                state_next <= IDLE;
            end
        endcase
    end




    always@(posedge clk)begin
        case(state_current)
        IDLE: 
            begin
                counter     <= 32'b0;
                reg_start   <= start;
                reg_valid   <= 1'b0;
                reg_A       <= A;
            end

        TRANS_DATA: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b0;
                reg_A       <= A;
            end

        CALCULATE:
            begin 
                counter     <= counter + 1'b1;
                reg_start   <= reg_start;
                reg_valid   <= 1'b1;
                reg_A       <= u_ms;
            end

        FINISH: 
            begin
                counter     <= counter;
                reg_start   <= reg_start;
                reg_valid   <= 1'b1;
                reg_A       <= reg_A;
            end

        default: 
            begin
                counter     <= 32'b0;
                reg_start   <= start;
                reg_valid   <= 1'b0;
                reg_A       <= A;
            end
        endcase
    end

    modular_square_alu  u_modular_square_alu (
        .A                       ( reg_A    ),

        .ms                      ( u_ms   )
    );

    assign valid = reg_valid;
    assign ms = reg_A;



endmodule
















module modular_square_alu
#(
    parameter NUM_ELEMENTS          = 62,
    parameter BIT_LEN               = 18,
    parameter WORD_LEN              = 17
)
(
    input logic [BIT_LEN-1:0] A[NUM_ELEMENTS],
    output logic [BIT_LEN-1:0] ms[NUM_ELEMENTS]
);

    localparam NUM_ELEMENTS_OUT     = 2112;
    localparam BIT_LEN_FLAG         = 18;
    localparam BIT_LEN_XPB          = 27;
    localparam NUM_XPB              = 38;
    localparam NUM_FLAG             = 64;


// square Outputs
    logic [NUM_ELEMENTS_OUT-1:0] u_square_c;
    logic [NUM_ELEMENTS_OUT-1:0] u_square_s;

    square #(
        .NUM_ELEMENTS ( NUM_ELEMENTS ),
        .BIT_LEN      ( BIT_LEN ),
        .WORD_LEN     ( WORD_LEN ))
     u_square (
        .A(A),
        .C(u_square_c),
        .S(u_square_s)
    );

    

    // reduction Inputs
    logic [NUM_XPB-1:0][BIT_LEN_XPB-1:0] rest0;
    logic [NUM_XPB-1:0][BIT_LEN_XPB-1:0] rest1;
    logic [NUM_FLAG-1:0][WORD_LEN-1:0] u_c_temp;
    logic [NUM_FLAG-1:0][WORD_LEN-1:0] u_s_temp;
    logic [NUM_FLAG-1:0][BIT_LEN_FLAG-1:0] xpb_flag;

    //assign rest0 = u_square_c[BIT_LEN_XPB*NUM_XPB-1:0];
    //assign rest1 = u_square_s[BIT_LEN_XPB*NUM_XPB-1:0];
    assign rest0 ={2'b0, u_square_c[1023:0]};
    assign rest1 ={2'b0, u_square_s[1023:0]};

    //assign u_c_temp = {2'b0, u_square_c[NUM_ELEMENTS_OUT-1:BIT_LEN_XPB*NUM_XPB]};
    //assign u_s_temp = {2'b0, u_square_s[NUM_ELEMENTS_OUT-1:BIT_LEN_XPB*NUM_XPB]};
    assign u_c_temp = u_square_c[NUM_ELEMENTS_OUT-1:1024];
    assign u_s_temp = u_square_s[NUM_ELEMENTS_OUT-1:1024];

    genvar i;
    generate;
        for (i=0; i< NUM_FLAG; i++) begin
            assign xpb_flag[i] = u_c_temp[i] + u_s_temp[i];
        end
    endgenerate

    // reduction Outputs
    logic [NUM_ELEMENTS*WORD_LEN-1:0] u_reduction_c;
    logic [NUM_ELEMENTS*WORD_LEN-1:0] u_reduction_s;

    reduction #(
        .BIT_LEN_FLAG ( BIT_LEN_FLAG ),
        .BIT_LEN_XPB  ( BIT_LEN_XPB ),
        .NUM_XPB      ( NUM_XPB ),
        .NUM_FLAG     ( NUM_FLAG ))
     u_reduction (
        .rest0(rest0),
        .rest1(rest1),
        .xpb_flag(xpb_flag),

        .C(u_reduction_c),
        .S(u_reduction_s)
    );

    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0] c_temp;
    logic [NUM_ELEMENTS-1:0][WORD_LEN-1:0] s_temp;

    assign c_temp = u_reduction_c;
    assign s_temp = u_reduction_s;


    genvar j;
    generate;
        for (j=0; j<NUM_ELEMENTS; j++) begin
            assign ms[j] = c_temp[j] + s_temp[j];
        end
    endgenerate


endmodule