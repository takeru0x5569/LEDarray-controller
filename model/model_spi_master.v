`timescale 1ns/1ps

module model_spi_master
    (input  wire    i_
    ,output reg     o_SPI_CLK =0
    ,output reg     o_SPI_ENA =1
    ,output reg     o_SPI_DAT =0
    );

parameter CYC = 100;

task SPI_TASK
    begin
        o_SPI_ENA=0;
        for(i=BIT_WIDTH-1; i>=0; i--)begin
            #(CYC) o_SPI_CLK =1;
            #(CYC) o_SPI_CLK =0;
        end
        o_SPI_ENA=1;
    end
endtask

endmodule


