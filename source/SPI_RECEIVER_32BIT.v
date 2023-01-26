//=============================================================
// SPI recever for ESP32
//-------------------------------------------------------------
// SPI clock polarity : idole:high , sampling rise edge	:SPI.setDataMode(SPI_MODE3) 
// SPI clock freqency : 1MHz        :SPI.setFrequency(1000000)
// SPI byte order     : MSB first   :SPI.setBitOrder(MSBFIRST)
// SPI data length    : 32bit       :SPI.transfer32(32bit_data)
//=============================================================
module SPI_RECEIVER_32BIT
  (input	wire      i_clk       //10.64MHz global clock
  ,input	wire      i_rst_n     //Low active global async reset
  ,input	wire      i_SPI_CLK   //1MHz = 1us
  ,input	wire      i_SPI_CS_n  //Chip select Low active
  ,input	wire      i_SPI_MOSI  //
  ,output	reg[31:0] o_data      //receive data
  ,output	reg       o_valid     //receive data valid 
  );
    
  reg [2:0]	buf_clk;
  reg [2:0]	buf_ena;
  reg [2:0]	buf_dat;
  
  reg [31:0]rsv_data;
  wire      clk_rise;
  wire      ena_rise;
  wire      shift	;
    
//input buffer FF to eliminate metastable. :メタステーブル対策入力FF
  always@(posedge i_clk or negedge i_rst_n)begin
    if(!i_rst_n)begin
        buf_clk	<=3'b111;// idle state is High
        buf_ena	<=3'b111;// idle state is High
        buf_dat	<=3'b000;
    end else begin
        buf_clk	<={buf_clk[1:0] , i_SPI_CLK};
        buf_ena	<={buf_ena[1:0] , i_SPI_CS_n};
        buf_dat	<={buf_dat[1:0] , i_SPI_MOSI};
    end
  end
    
//edge detect：SPI入力信号のエッジ検出
  assign clk_rise=( (buf_clk[2]==1'b0) && (buf_clk[1]==1'b1) ) ? 1'b1 : 1'b0;
  assign ena_rise=( (buf_ena[2]==1'b0) && (buf_ena[1]==1'b1) ) ? 1'b1 : 1'b0;
  assign shift   =( (clk_rise == 1'b1) && (buf_ena[2]==1'b0) ) ? 1'b1 : 1'b0;

//data shift convert serial to parallel：SPIデータシリパラ変換用FF
  always@(posedge i_clk)begin
    if(shift)
      rsv_data <= {rsv_data[30:0],buf_dat[2]};
  end

//output regester：出力段FF
  always@(posedge i_clk)begin
    if(!i_rst_n)begin
      o_data	<=32'd0;
      o_valid <=1'b0;
    end else if(ena_rise==1'b1)begin
      o_data	<=rsv_data;
      o_valid <=1'b1;
    end else begin
      o_data	<=o_data;
      o_valid <=1'b0;
    end
  end

endmodule