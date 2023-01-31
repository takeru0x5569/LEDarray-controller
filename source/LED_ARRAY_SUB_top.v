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
always@(posedge clk or negedge i_RESET_n)begin
    if(!i_RESET_n)  dff <=3'b000;
    else            dff <={dff[1:0],i_TOGGLE_SYNC};
end
assign synk_edge = dff[2] ^ dff[1];

endmodule
