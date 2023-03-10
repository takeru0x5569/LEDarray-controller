module LED_ARRAY_SUB_top
    (input	wire		i_RESET_n
    ,input	wire		i_TOGGLE_SYNC   //1MHz = 1us
    ,input	wire		i_HEAD_FLAG		//
    ,output wire[31:0]	o_LED_SINK
);
    wire		clk;
//	2.08	2.15	2.22	2.29	2.38	2.46	2.56	2.66	2.77	2.89	3.02	3.17	3.33	
//	3.5		3.69	3.91	4.16	4.29	4.43	4.59	4.75	4.93	5.12	5.32	5.54	5.78	
//	6.05	6.33	6.65	7		7.39	7.82	8.31	8.58	8.87	9.17	9.5		9.85	10.23	
//	10.64	11.08	11.57	12.09	12.67	13.3	14		14.78	15.65	15.65	16.63	17.73	19		
//	20.46	22.17	24.18	26.6	29.56	33.25	38		44.33	53.2	66.5	88.67	133

//clock generate of internal oscillator.
    defparam OSCH_inst.NOM_FREQ = "10.23";
    OSCH OSCH_inst
    (.STDBY		    (1'b0	)// 0=Enabled, 1=Disabled
    ,.OSC		    (clk	)
    ,.SEDSTDBY	    (		)
    );
    
 
reg [2:0]   dff;
wire        synk_edge;
reg [4:0]   count;
reg [31:0]  LED_SINK;
always@(posedge clk or negedge i_RESET_n)begin
    if(!i_RESET_n)  dff <=3'b000;
    else            dff <={dff[1:0],i_TOGGLE_SYNC};
end
//両エッジ
assign synk_edge = dff[2] ^ dff[1];

//エッジでカウントを進める
always@(posedge clk or negedge i_RESET_n)begin
    if(!i_RESET_n)      count <=5'd0;
    else if(synk_edge)begin
        if(i_HEAD_FLAG)
            count <=5'd0;
        else
            count <=count + 5'd1;
    end
end

always@(posedge clk or negedge i_RESET_n)begin
    if(!i_RESET_n)      LED_SINK <=32'h0000_0000;
    else
        case(count)
            5'h00 : LED_SINK <=32'h0000_0001;
            5'h01 : LED_SINK <=32'h0000_0002;
            5'h02 : LED_SINK <=32'h0000_0004;
            5'h03 : LED_SINK <=32'h0000_0008;
            5'h04 : LED_SINK <=32'h0000_0010;
            5'h05 : LED_SINK <=32'h0000_0020;
            5'h06 : LED_SINK <=32'h0000_0040;
            5'h07 : LED_SINK <=32'h0000_0080;
            5'h08 : LED_SINK <=32'h0000_0100;
            5'h09 : LED_SINK <=32'h0000_0200;
            5'h0A : LED_SINK <=32'h0000_0400;
            5'h0B : LED_SINK <=32'h0000_0800;
            5'h0C : LED_SINK <=32'h0000_1000;
            5'h0D : LED_SINK <=32'h0000_2000;
            5'h0E : LED_SINK <=32'h0000_4000;
            5'h0F : LED_SINK <=32'h0000_8000;
            5'h10 : LED_SINK <=32'h0001_0000;
            5'h11 : LED_SINK <=32'h0002_0000;
            5'h12 : LED_SINK <=32'h0004_0000;
            5'h13 : LED_SINK <=32'h0008_0000;
            5'h14 : LED_SINK <=32'h0010_0000;
            5'h15 : LED_SINK <=32'h0020_0000;
            5'h16 : LED_SINK <=32'h0040_0000;
            5'h17 : LED_SINK <=32'h0080_0000;
            5'h18 : LED_SINK <=32'h0100_0000;
            5'h19 : LED_SINK <=32'h0200_0000;
            5'h1A : LED_SINK <=32'h0400_0000;
            5'h1B : LED_SINK <=32'h0800_0000;
            5'h1C : LED_SINK <=32'h1000_0000;
            5'h1D : LED_SINK <=32'h2000_0000;
            5'h1E : LED_SINK <=32'h4000_0000;
            5'h1F : LED_SINK <=32'h8000_0000;

            default:LED_SINK <=32'h0000_0000;
        endcase
end


assign o_LED_SINK = LED_SINK;

endmodule
