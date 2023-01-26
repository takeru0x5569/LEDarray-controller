module TRIGGER_GEN
    (input  wire        i_clk
    ,input  wire        i_rst_n
    ,input  wire        i_ena
    ,input  wire        i_prm_we
    ,input  wire[31:0]  i_prmeter
    ,output reg[27:0]   o_CULUMN_PATTERN
    ,output reg         o_TOGGLE_SYNC
    ,output reg         o_HEAD_FLAG
    );

reg         prm_active;
reg         prm_mode;
reg[23:0]   prm_count;
reg         prm_update;

reg         ena;
wire        start;
reg[23:0]   dev_count;
wire        count_end;
wire        sync_x;
wire        sync_y;

reg[3:0]    seq_count;
wire        seq1_idle   = (seq_count==4'h1) ? 1'b1 : 1'b0;
wire        seq2_toggle = (seq_count==4'h6) ? 1'b1 : 1'b0;
wire        seq3_active = (seq_count==4'hE) ? 1'b1 : 1'b0;

reg[4:0]    row_count;
reg[27:0]   culumn_pattern;


// system enable and start triger
    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n)
            ena <=1'b1;
        else
            ena <=i_ena;
    end
    assign start = i_ena && !ena;
// parameters
    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n)begin
            prm_active  <= 1'b0;
            prm_mode    <= 1'b0;
            prm_count   <= 24'd1023;//default 100us @ 10.23MHz clock
            prm_update  <= 1'b0;
        end else if(i_prm_we)begin
            prm_active  <= i_prmeter[25];
            prm_mode    <= i_prmeter[24];
            prm_count   <= (i_prmeter[23:0] < 24'h0003FF) ? 24'h0003FF : i_prmeter[23:0]; 
            prm_update  <=1'b1;
        end else begin
            prm_update  <=1'b0;
        end
    end
// devider counter and sync 
    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n)            dev_count   <=24'd0;
        else if(prm_update)     dev_count   <=24'd0;
        else if(prm_mode==1'b0) dev_count   <=24'd0;
        else if(!ena)           dev_count   <=24'd0;
        else if(sync_x)         dev_count   <=24'd0;
        else                    dev_count   <=dev_count + 24'd1;
    end
assign count_end = (prm_count == dev_count) ? 1'b1 : 1'b0;
assign sync_x      = count_end | start;
assign sync_y      = (row_count==5'h1F) ? sync_x : 1'b0;

// seqence counter
    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n)                seq_count   <= 4'd0;
        else if(sync_x)             seq_count   <= 4'd0;
        else if(seq_count==4'hF)    seq_count   <= seq_count;
        else                        seq_count   <= seq_count + 4'd1;
    end

//row position counter
    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n)    row_count   <=5'h1F;
        else if(sync_x) row_count   <= row_count + 5'd1;
    end

// bit pattern generator
    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n)        culumn_pattern  <= 28'h00_0000;                                 //zero cler by system reset.                                 
        else if(prm_update) culumn_pattern  <= (prm_mode==1'b0) ? 28'hFF_FFFF : 28'h800_0000;//initialise value by update trigger.
        else if(sync_y)     culumn_pattern  <= {culumn_pattern[26:0],culumn_pattern[27]};   //bit shift by syncro trigger.
    end

// output register
    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n)        o_CULUMN_PATTERN    <= 28'd0;
        else if(seq1_idle)  o_CULUMN_PATTERN    <= 28'd0;
        else if(seq3_active)o_CULUMN_PATTERN    <= culumn_pattern;
    end

    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n)            o_TOGGLE_SYNC   <=1'b0;
        else if(seq2_toggle)    o_TOGGLE_SYNC   <=~o_TOGGLE_SYNC;
    end

    always@(posedge i_clk or negedge i_rst_n)begin
        if(!i_rst_n)        o_HEAD_FLAG <=1'b0;
        else if(seq1_idle)  o_HEAD_FLAG <= (row_count==5'd0) ? 1'b1 : 1'b0;
    end

endmodule