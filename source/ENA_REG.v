module ENA_REG
    (input  wire    i_clk
    ,input  wire    i_RESET_n
    ,input  wire    i_ENA_p
    ,output reg     o_ena
    );

    reg [1:0]   dff;
//    reg [9:0]   dev;
    wire        sampling; 


//assign sampling = (dev==10'h3FF) ? 1'b1 : 1'b0;
//
    always@(posedge i_clk or negedge i_RESET_n)begin
        if(!i_RESET_n)  dff <= 2'b00;
        else            dff <= {dff[0],i_ENA_p};
    end

//
    // always@(posedge i_clk or negedge i_RESET_n)begin
    //     if(!i_RESET_n)  dev <= 10'd0;
    //     else            dev <= dev + 10'd1;
    // end
// 
    always@(posedge i_clk or negedge i_RESET_n)begin
        if(!i_RESET_n)      o_ena <= 1'b0;
        else                o_ena <= dff[1];
    end

endmodule

