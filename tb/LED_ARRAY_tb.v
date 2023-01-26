`timescale 1ns/1ps
module LED_ARRAY_tb();

reg		    i_RESET_n   =1'b0;//
reg		    i_SPI_CLK   =1'b1;//
reg		    i_SPI_ENA_n =1'b1;//
reg		    i_SPI_DATA  =1'bz;//
reg         i_ENA_p     =1'b0;
wire[31:0]	o_LED       ;

parameter CYC = 1000;//1MHz = 1us
parameter BIT_WIDTH = 32;
integer i;

task SPI_TASK(input[BIT_WIDTH-1:0] data);
    begin
        $display("data=0x%h",data);
        i_SPI_ENA_n=0;
        for(i=BIT_WIDTH-1; i>=0; i=i-1)begin
            i_SPI_CLK   <=1'b0;
            i_SPI_DATA  <= data[i];
            #(CYC/2);
            i_SPI_CLK <=1'b1;
            #(CYC/2);
        end
        i_SPI_ENA_n =1'b1;
        i_SPI_DATA  =1'bz;
    end
endtask


LED_ARRAY_top   LED_ARRAY_top
	(.i_RESET_n     (i_RESET_n      )
	,.i_SPI_CLK     (i_SPI_CLK      )
	,.i_SPI_ENA_n	(i_SPI_ENA_n    )
	,.i_SPI_DATA    (i_SPI_DATA     )
    ,.i_ENA_p       (i_ENA_p        )
	,.o_LED         (o_LED          )
);



initial begin
    #1000;
    i_RESET_n =1;
    #1000;
    SPI_TASK({8'b0000_0011,24'h00_01_00});
    #1000;
    i_ENA_p =1;

end

endmodule