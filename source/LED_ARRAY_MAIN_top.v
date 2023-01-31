module LED_ARRAY_MAIN_top
    (input	wire		i_RESET_n
    ,input	wire		i_SPI_CLK		//1MHz = 1us
    ,input	wire		i_SPI_ENA_n		//
    ,input	wire		i_SPI_DATA      //
    ,input	wire        i_ENA_p         //
    ,output wire[31:0]	o_LED
    ,output wire        o_TOGGLE_SYNC
    ,output wire        o_HEAD_FLAG
);
    wire		clk;
    wire[31:0]	receive_dat;
    wire		receive_ena;
    wire        ena;
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
    
ENA_REG	ENA_REG_inst
    (.i_clk     (clk)
    ,.i_RESET_n (i_RESET_n)
    ,.i_ENA_p   (i_ENA_p)
    ,.o_ena     (ena)
    );

//SPI data recever of ESP32 
    SPI_RECEIVER_32BIT	SPI_RECEIVER_32BIT
    (.i_clk         (clk)
    ,.i_rst_n       (i_RESET_n)
    ,.i_SPI_CLK     (i_SPI_CLK)	
    ,.i_SPI_CS_n    (i_SPI_ENA_n)			
    ,.i_SPI_MOSI    (i_SPI_DATA)		
    ,.o_data        (receive_dat)		
    ,.o_valid       (receive_ena)
    );

TRIGGER_GEN	TRIGGER_GEN
    (.i_clk			    (clk)
    ,.i_rst_n		    (i_RESET_n)	
    ,.i_ena             (ena)
    ,.i_prm_we		    (receive_ena)	
    ,.i_prmeter		    (receive_dat)
    ,.o_CULUMN_PATTERN  (o_LED[27:0])
    ,.o_TOGGLE_SYNC	    (o_TOGGLE_SYNC)
    ,.o_HEAD_FLAG		(o_HEAD_FLAG)
    );

assign  o_LED[31:28] = 4'b0000;

endmodule
