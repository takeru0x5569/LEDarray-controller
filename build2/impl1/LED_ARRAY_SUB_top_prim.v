// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Fri Mar 10 13:26:28 2023
//
// Verilog Description of module LED_ARRAY_SUB_top
//

module LED_ARRAY_SUB_top (i_RESET_n, i_TOGGLE_SYNC, i_HEAD_FLAG, o_LED_SINK) /* synthesis syn_module_defined=1 */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(1[8:25])
    input i_RESET_n;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(2[18:27])
    input i_TOGGLE_SYNC;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(3[18:31])
    input i_HEAD_FLAG;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(4[18:29])
    output [31:0]o_LED_SINK;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    
    wire clk /* synthesis is_clock=1, SET_AS_NETWORK=clk */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(7[11:14])
    
    wire GND_net, VCC_net, i_RESET_n_c, i_TOGGLE_SYNC_c, i_HEAD_FLAG_c, 
        o_LED_SINK_c_31, o_LED_SINK_c_30, o_LED_SINK_c_29, o_LED_SINK_c_28, 
        o_LED_SINK_c_27, o_LED_SINK_c_26, o_LED_SINK_c_25, o_LED_SINK_c_24, 
        o_LED_SINK_c_23, o_LED_SINK_c_22, o_LED_SINK_c_21, o_LED_SINK_c_20, 
        o_LED_SINK_c_19, o_LED_SINK_c_18, o_LED_SINK_c_17, o_LED_SINK_c_16, 
        o_LED_SINK_c_15, o_LED_SINK_c_14, o_LED_SINK_c_13, o_LED_SINK_c_12, 
        o_LED_SINK_c_11, o_LED_SINK_c_10, o_LED_SINK_c_9, o_LED_SINK_c_8, 
        o_LED_SINK_c_7, o_LED_SINK_c_6, o_LED_SINK_c_5, o_LED_SINK_c_4, 
        o_LED_SINK_c_3, o_LED_SINK_c_2, o_LED_SINK_c_1, o_LED_SINK_c_0;
    wire [2:0]dff;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(23[13:16])
    wire [31:0]o_LED_SINK_31__N_1;
    
    wire n190, n191, n192, n193, n194, n195, n196, n197, n198, 
        n199, n200, n201, n202, n203, n204, n205, n206, n207, 
        n208, n209, n210, n211, n212, n213, n214, n215, n216, 
        n217, n218, n219, n220, n6, n2819, n529, n561, n593, 
        n625, n657, n689, n721, n753, n785, n817, n849, n881, 
        n913, n945, n2315, n977, n2314, n1009, n2234, n2311, 
        n2309, n2308, n2176, n2305, n2690, n2818, n2817, n2762, 
        n2294, n1081, n1117, n2816, n2815, n2811, n2814, n6_adj_1, 
        n2810, n1297, n2653, n1335, n2813, n2788, n2833, clk_enable_32, 
        n2831, n2830, n2829, n1452, n2828, n2827, n2754, n2826, 
        n1493, n2757, n2825, n2824, n2823, n1542, n2317, n2216, 
        n2694, n2738, n2780, n2751, n2822, n2821, n2734, n2812, 
        n2839, n2820;
    
    VHI i1371 (.Z(VCC_net));
    LUT4 i1_2_lut_rep_16 (.A(o_LED_SINK_31__N_1[0]), .B(n1542), .Z(n2823)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_16.init = 16'hbbbb;
    FD1S3AX dff_i0 (.D(i_TOGGLE_SYNC_c), .CK(clk), .Q(dff[0]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(29[21:52])
    defparam dff_i0.GSR = "ENABLED";
    OSCH OSCH_inst (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "10.23";
    FD1S3AX dff_i2 (.D(dff[1]), .CK(clk), .Q(dff[2]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(29[21:52])
    defparam dff_i2.GSR = "ENABLED";
    FD1S3AX dff_i1 (.D(dff[0]), .CK(clk), .Q(dff[1]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(29[21:52])
    defparam dff_i1.GSR = "ENABLED";
    FD1S3IX LED_SINK_i30 (.D(n977), .CK(clk), .CD(n2216), .Q(o_LED_SINK_c_29));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i30.GSR = "ENABLED";
    FD1S3IX LED_SINK_i28 (.D(n2754), .CK(clk), .CD(n193), .Q(o_LED_SINK_c_27));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i28.GSR = "ENABLED";
    FD1S3IX LED_SINK_i26 (.D(n913), .CK(clk), .CD(n2813), .Q(o_LED_SINK_c_25));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i26.GSR = "ENABLED";
    FD1S3IX LED_SINK_i25 (.D(n2824), .CK(clk), .CD(n881), .Q(o_LED_SINK_c_24));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i25.GSR = "ENABLED";
    FD1S3IX LED_SINK_i24 (.D(n2757), .CK(clk), .CD(n197), .Q(o_LED_SINK_c_23));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i24.GSR = "ENABLED";
    FD1S3IX LED_SINK_i22 (.D(n849), .CK(clk), .CD(n2819), .Q(o_LED_SINK_c_21));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i22.GSR = "ENABLED";
    FD1S3IX LED_SINK_i20 (.D(n2738), .CK(clk), .CD(n201), .Q(o_LED_SINK_c_19));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i20.GSR = "ENABLED";
    FD1S3IX LED_SINK_i18 (.D(n785), .CK(clk), .CD(n2810), .Q(o_LED_SINK_c_17));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i18.GSR = "ENABLED";
    FD1S3IX LED_SINK_i17 (.D(n2821), .CK(clk), .CD(n753), .Q(o_LED_SINK_c_16));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i17.GSR = "ENABLED";
    FD1S3IX LED_SINK_i16 (.D(n2751), .CK(clk), .CD(n205), .Q(o_LED_SINK_c_15));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i16.GSR = "ENABLED";
    FD1S3IX LED_SINK_i14 (.D(n721), .CK(clk), .CD(n2176), .Q(o_LED_SINK_c_13));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i14.GSR = "ENABLED";
    FD1S3IX LED_SINK_i12 (.D(n2694), .CK(clk), .CD(n209), .Q(o_LED_SINK_c_11));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i12.GSR = "ENABLED";
    OB o_LED_SINK_pad_14 (.I(o_LED_SINK_c_14), .O(o_LED_SINK[14]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_15 (.I(o_LED_SINK_c_15), .O(o_LED_SINK[15]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_16 (.I(o_LED_SINK_c_16), .O(o_LED_SINK[16]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_17 (.I(o_LED_SINK_c_17), .O(o_LED_SINK[17]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_18 (.I(o_LED_SINK_c_18), .O(o_LED_SINK[18]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_19 (.I(o_LED_SINK_c_19), .O(o_LED_SINK[19]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_20 (.I(o_LED_SINK_c_20), .O(o_LED_SINK[20]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_21 (.I(o_LED_SINK_c_21), .O(o_LED_SINK[21]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_22 (.I(o_LED_SINK_c_22), .O(o_LED_SINK[22]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_23 (.I(o_LED_SINK_c_23), .O(o_LED_SINK[23]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_24 (.I(o_LED_SINK_c_24), .O(o_LED_SINK[24]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_13 (.I(o_LED_SINK_c_13), .O(o_LED_SINK[13]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_12 (.I(o_LED_SINK_c_12), .O(o_LED_SINK[12]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_11 (.I(o_LED_SINK_c_11), .O(o_LED_SINK[11]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_10 (.I(o_LED_SINK_c_10), .O(o_LED_SINK[10]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_9 (.I(o_LED_SINK_c_9), .O(o_LED_SINK[9]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_8 (.I(o_LED_SINK_c_8), .O(o_LED_SINK[8]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_7 (.I(o_LED_SINK_c_7), .O(o_LED_SINK[7]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_6 (.I(o_LED_SINK_c_6), .O(o_LED_SINK[6]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_25 (.I(o_LED_SINK_c_25), .O(o_LED_SINK[25]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    FD1S3IX LED_SINK_i10 (.D(n657), .CK(clk), .CD(n2812), .Q(o_LED_SINK_c_9));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i10.GSR = "ENABLED";
    FD1S3IX LED_SINK_i9 (.D(n2234), .CK(clk), .CD(n625), .Q(o_LED_SINK_c_8));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i9.GSR = "ENABLED";
    OB o_LED_SINK_pad_26 (.I(o_LED_SINK_c_26), .O(o_LED_SINK[26]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    FD1S3IX LED_SINK_i8 (.D(n2690), .CK(clk), .CD(n213), .Q(o_LED_SINK_c_7));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i8.GSR = "ENABLED";
    OB o_LED_SINK_pad_5 (.I(o_LED_SINK_c_5), .O(o_LED_SINK[5]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_27 (.I(o_LED_SINK_c_27), .O(o_LED_SINK[27]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    FD1S3IX LED_SINK_i6 (.D(n593), .CK(clk), .CD(n2816), .Q(o_LED_SINK_c_5));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i6.GSR = "ENABLED";
    OB o_LED_SINK_pad_4 (.I(o_LED_SINK_c_4), .O(o_LED_SINK[4]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    FD1S3IX LED_SINK_i4 (.D(n2653), .CK(clk), .CD(n217), .Q(o_LED_SINK_c_3));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i4.GSR = "ENABLED";
    OB o_LED_SINK_pad_3 (.I(o_LED_SINK_c_3), .O(o_LED_SINK[3]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_28 (.I(o_LED_SINK_c_28), .O(o_LED_SINK[28]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    FD1S3IX LED_SINK_i2 (.D(n529), .CK(clk), .CD(n2811), .Q(o_LED_SINK_c_1));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i2.GSR = "ENABLED";
    OB o_LED_SINK_pad_2 (.I(o_LED_SINK_c_2), .O(o_LED_SINK[2]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    FD1S3AX LED_SINK_i1 (.D(o_LED_SINK_31__N_1[0]), .CK(clk), .Q(o_LED_SINK_c_0));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i1.GSR = "ENABLED";
    OB o_LED_SINK_pad_29 (.I(o_LED_SINK_c_29), .O(o_LED_SINK[29]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    OB o_LED_SINK_pad_1 (.I(o_LED_SINK_c_1), .O(o_LED_SINK[1]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    IB i_HEAD_FLAG_pad (.I(i_HEAD_FLAG), .O(i_HEAD_FLAG_c));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(4[18:29])
    IB i_TOGGLE_SYNC_pad (.I(i_TOGGLE_SYNC), .O(i_TOGGLE_SYNC_c));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(3[18:31])
    OB o_LED_SINK_pad_0 (.I(o_LED_SINK_c_0), .O(o_LED_SINK[0]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    IB i_RESET_n_pad (.I(i_RESET_n), .O(i_RESET_n_c));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(2[18:27])
    OB o_LED_SINK_pad_30 (.I(o_LED_SINK_c_30), .O(o_LED_SINK[30]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    FD1S3IX LED_SINK_i5 (.D(n2815), .CK(clk), .CD(n561), .Q(o_LED_SINK_c_4));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i5.GSR = "ENABLED";
    OB o_LED_SINK_pad_31 (.I(o_LED_SINK_c_31), .O(o_LED_SINK[31]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(5[24:34])
    FD1S3IX LED_SINK_i7 (.D(n2315), .CK(clk), .CD(n593), .Q(o_LED_SINK_c_6));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i7.GSR = "ENABLED";
    FD1S3IX LED_SINK_i11 (.D(n2314), .CK(clk), .CD(n657), .Q(o_LED_SINK_c_10));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i11.GSR = "ENABLED";
    FD1S3IX LED_SINK_i13 (.D(n2817), .CK(clk), .CD(n689), .Q(o_LED_SINK_c_12));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i13.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i24 (.D(n198), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n197));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i24.GSR = "ENABLED";
    FD1S3IX LED_SINK_i15 (.D(n2818), .CK(clk), .CD(n721), .Q(o_LED_SINK_c_14));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i15.GSR = "ENABLED";
    FD1S3IX LED_SINK_i19 (.D(n2311), .CK(clk), .CD(n785), .Q(o_LED_SINK_c_18));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i19.GSR = "ENABLED";
    FD1S3IX LED_SINK_i21 (.D(n2814), .CK(clk), .CD(n817), .Q(o_LED_SINK_c_20));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i21.GSR = "ENABLED";
    FD1S3IX LED_SINK_i23 (.D(n2309), .CK(clk), .CD(n849), .Q(o_LED_SINK_c_22));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i23.GSR = "ENABLED";
    FD1S3IX LED_SINK_i27 (.D(n2308), .CK(clk), .CD(n913), .Q(o_LED_SINK_c_26));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i27.GSR = "ENABLED";
    FD1S3IX LED_SINK_i29 (.D(n2820), .CK(clk), .CD(n945), .Q(o_LED_SINK_c_28));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i29.GSR = "ENABLED";
    FD1S3IX LED_SINK_i31 (.D(n2827), .CK(clk), .CD(n977), .Q(o_LED_SINK_c_30));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i31.GSR = "ENABLED";
    FD1S3IX LED_SINK_i32 (.D(n2734), .CK(clk), .CD(n2305), .Q(o_LED_SINK_c_31));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i32.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i1 (.D(o_LED_SINK_31__N_1[0]), .SP(clk_enable_32), 
            .CD(n2294), .CK(clk), .Q(n220));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i1.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i2 (.D(n220), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n219));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i2.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i27 (.D(n195), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n194));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i27.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i3 (.D(n219), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n218));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i3.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i4 (.D(n218), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n217));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i4.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i5 (.D(n217), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n216));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i5.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i26 (.D(n196), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n195));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i26.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i6 (.D(n216), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n215));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i6.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i7 (.D(n215), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n214));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i7.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i8 (.D(n214), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n213));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i8.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i9 (.D(n213), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n212));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i9.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i10 (.D(n212), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n211));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i10.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i11 (.D(n211), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n210));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i11.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i18 (.D(n204), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n203));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i18.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i15 (.D(n207), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n206));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i15.GSR = "ENABLED";
    FD1P3JX count_FSM_i0_i0 (.D(n190), .SP(clk_enable_32), .PD(n2294), 
            .CK(clk), .Q(o_LED_SINK_31__N_1[0]));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i0.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i12 (.D(n210), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n209));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i12.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i23 (.D(n199), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n198));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i23.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i21 (.D(n201), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n200));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i21.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i17 (.D(n205), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n204));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i17.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i14 (.D(n208), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n207));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i14.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i31 (.D(n191), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n190));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i31.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i29 (.D(n193), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n192));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i29.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_2_lut_2_lut_3_lut (.A(n197), .B(n198), .C(n2788), 
         .Z(n2757)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i1_2_lut_3_lut_2_lut_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i303_2_lut_rep_28 (.A(n197), .B(n198), .Z(n2839)) /* synthesis lut_function=(A+(B)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i303_2_lut_rep_28.init = 16'heeee;
    LUT4 i1338_2_lut_rep_18_3_lut_4_lut (.A(n191), .B(n192), .C(o_LED_SINK_31__N_1[0]), 
         .D(n190), .Z(n2825)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i1338_2_lut_rep_18_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n191), .B(n192), .C(o_LED_SINK_31__N_1[0]), 
         .D(n190), .Z(n2734)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0f0e;
    LUT4 i2_3_lut_rep_20_4_lut (.A(n191), .B(n192), .C(o_LED_SINK_31__N_1[0]), 
         .D(n190), .Z(n2827)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i2_3_lut_rep_20_4_lut.init = 16'h000e;
    LUT4 i8_1_lut_3_lut_4_lut (.A(n191), .B(n192), .C(o_LED_SINK_31__N_1[0]), 
         .D(n190), .Z(n2216)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i8_1_lut_3_lut_4_lut.init = 16'hfff1;
    LUT4 i304_1_lut (.A(n219), .Z(n529)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i304_1_lut.init = 16'h5555;
    LUT4 i318_1_lut (.A(n191), .Z(n977)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i318_1_lut.init = 16'h5555;
    LUT4 dff_2__I_0_2_lut_rep_25 (.A(dff[2]), .B(dff[1]), .Z(clk_enable_32)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(32[20:35])
    defparam dff_2__I_0_2_lut_rep_25.init = 16'h6666;
    LUT4 i305_1_lut (.A(n217), .Z(n561)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i305_1_lut.init = 16'h5555;
    LUT4 i894_2_lut_3_lut (.A(dff[2]), .B(dff[1]), .C(i_HEAD_FLAG_c), 
         .Z(n2294)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(32[20:35])
    defparam i894_2_lut_3_lut.init = 16'h6060;
    LUT4 i2_2_lut_rep_26 (.A(n199), .B(n200), .Z(n2833)) /* synthesis lut_function=(A+(B)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i2_2_lut_rep_26.init = 16'heeee;
    LUT4 i316_1_lut (.A(n195), .Z(n913)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i316_1_lut.init = 16'h5555;
    LUT4 i3_4_lut (.A(n2826), .B(n195), .C(n196), .D(n6), .Z(n1493)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i4_4_lut (.A(n203), .B(n2762), .C(n2828), .D(n6_adj_1), .Z(n1542)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(n1493), .B(n204), .Z(n6_adj_1)) /* synthesis lut_function=(A+(B)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_1 (.A(n201), .B(n202), .Z(n2762)) /* synthesis lut_function=(A+(B)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i1_2_lut_adj_1.init = 16'heeee;
    LUT4 i315_1_lut (.A(n197), .Z(n881)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i315_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_17_3_lut_4_lut (.A(n199), .B(n200), .C(n2788), .D(n2839), 
         .Z(n2824)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i1_2_lut_rep_17_3_lut_4_lut.init = 16'h0f0e;
    LUT4 i1350_4_lut (.A(n195), .B(n2780), .C(n193), .D(n2825), .Z(n2788)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1350_4_lut.init = 16'hfffe;
    LUT4 i1342_2_lut (.A(n194), .B(n196), .Z(n2780)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1342_2_lut.init = 16'heeee;
    LUT4 i314_1_lut (.A(n199), .Z(n849)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i314_1_lut.init = 16'h5555;
    LUT4 i873_1_lut_3_lut_4_lut (.A(n2822), .B(n1452), .C(n2829), .D(n2830), 
         .Z(n2315)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i873_1_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i309_1_lut (.A(n209), .Z(n689)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i309_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_4_2_lut_3_lut_3_lut_4_lut (.A(n2822), .B(n1452), .C(n1297), 
         .D(n1009), .Z(n2811)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i1_2_lut_rep_4_2_lut_3_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i312_1_lut (.A(n203), .Z(n785)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i312_1_lut.init = 16'h5555;
    LUT4 i313_1_lut (.A(n201), .Z(n817)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i313_1_lut.init = 16'h5555;
    LUT4 i317_1_lut (.A(n193), .Z(n945)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i317_1_lut.init = 16'h5555;
    LUT4 i863_1_lut (.A(n190), .Z(n2305)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i863_1_lut.init = 16'h5555;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i2_3_lut_rep_9_4_lut (.A(n2822), .B(n1452), .C(n2829), .D(n2830), 
         .Z(n2816)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i2_3_lut_rep_9_4_lut.init = 16'hffef;
    LUT4 i3_2_lut_rep_21_3_lut_4_lut (.A(n197), .B(n198), .C(n200), .D(n199), 
         .Z(n2828)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i3_2_lut_rep_21_3_lut_4_lut.init = 16'hfffe;
    LUT4 i311_1_lut (.A(n205), .Z(n753)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i311_1_lut.init = 16'h5555;
    LUT4 i3_4_lut_adj_2 (.A(n207), .B(n205), .C(n206), .D(n208), .Z(n1335)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i3_4_lut_adj_2.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut (.A(n2822), .B(n1452), .C(n1009), .D(n1297), 
         .Z(n2653)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i2_3_lut_4_lut.init = 16'h0010;
    LUT4 i1362_2_lut_rep_7_2_lut_3_lut_4_lut (.A(o_LED_SINK_31__N_1[0]), .B(n1542), 
         .C(n2828), .D(n1493), .Z(n2814)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1362_2_lut_rep_7_2_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i875_1_lut_2_lut_2_lut_3_lut_3_lut_4_lut (.A(n2822), .B(n1452), 
         .C(n1297), .D(n1009), .Z(n2317)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i875_1_lut_2_lut_2_lut_3_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1358_3_lut_rep_13_3_lut_4_lut (.A(o_LED_SINK_31__N_1[0]), .B(n1542), 
         .C(n2826), .D(n1493), .Z(n2820)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1358_3_lut_rep_13_3_lut_4_lut.init = 16'h0400;
    LUT4 i301_2_lut (.A(n205), .B(n206), .Z(n1117)) /* synthesis lut_function=(A+(B)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i301_2_lut.init = 16'heeee;
    LUT4 i310_1_lut (.A(n207), .Z(n721)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i310_1_lut.init = 16'h5555;
    LUT4 i299_2_lut (.A(n209), .B(n210), .Z(n1081)) /* synthesis lut_function=(A+(B)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i299_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_5_2_lut_4_lut_4_lut (.A(n2822), .B(n1081), .C(n1452), 
         .D(n1335), .Z(n2812)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i1_2_lut_rep_5_2_lut_4_lut_4_lut.init = 16'hffef;
    LUT4 i308_1_lut (.A(n211), .Z(n657)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i308_1_lut.init = 16'h5555;
    LUT4 i872_1_lut_2_lut_2_lut_4_lut_4_lut (.A(n2822), .B(n1081), .C(n1452), 
         .D(n1335), .Z(n2314)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i872_1_lut_2_lut_2_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i3_4_lut_adj_3 (.A(n212), .B(n211), .C(n1335), .D(n1081), .Z(n1452)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i3_4_lut_adj_3.init = 16'hfffe;
    LUT4 i307_1_lut (.A(n213), .Z(n625)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i307_1_lut.init = 16'h5555;
    FD1P3IX count_FSM_i0_i13 (.D(n209), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n208));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i13.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i16 (.D(n206), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n205));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i16.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i19 (.D(n203), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n202));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i19.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_3_2_lut_3_lut_3_lut_4_lut (.A(n1493), .B(n2823), .C(n2828), 
         .D(n2762), .Z(n2810)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_3_2_lut_3_lut_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX count_FSM_i0_i20 (.D(n202), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n201));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i20.GSR = "ENABLED";
    LUT4 i306_1_lut (.A(n215), .Z(n593)) /* synthesis lut_function=(!(A)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i306_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_adj_4 (.A(n190), .B(n2831), .C(n6), .D(o_LED_SINK_31__N_1[0]), 
         .Z(n2754)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i1_2_lut_3_lut_4_lut_adj_4.init = 16'h0010;
    LUT4 i869_1_lut_2_lut_2_lut_3_lut_3_lut_4_lut (.A(n1493), .B(n2823), 
         .C(n2828), .D(n2762), .Z(n2311)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i869_1_lut_2_lut_2_lut_3_lut_3_lut_4_lut.init = 16'h0001;
    FD1P3IX count_FSM_i0_i22 (.D(n200), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n199));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i22.GSR = "ENABLED";
    FD1P3IX count_FSM_i0_i25 (.D(n197), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n196));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i25.GSR = "ENABLED";
    LUT4 i297_2_lut (.A(n217), .B(n218), .Z(n1009)) /* synthesis lut_function=(A+(B)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i297_2_lut.init = 16'heeee;
    FD1P3IX count_FSM_i0_i28 (.D(n194), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n193));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i28.GSR = "ENABLED";
    LUT4 i2_3_lut_rep_12_4_lut (.A(n1493), .B(n2823), .C(n2833), .D(n2839), 
         .Z(n2819)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_12_4_lut.init = 16'hffef;
    FD1P3IX count_FSM_i0_i30 (.D(n192), .SP(clk_enable_32), .CD(n2294), 
            .CK(clk), .Q(n191));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam count_FSM_i0_i30.GSR = "ENABLED";
    LUT4 i867_1_lut_3_lut_4_lut (.A(n1493), .B(n2823), .C(n2833), .D(n2839), 
         .Z(n2309)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i867_1_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i2_3_lut_4_lut_adj_5 (.A(n2839), .B(n2833), .C(n2788), .D(n2762), 
         .Z(n2738)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i2_3_lut_4_lut_adj_5.init = 16'h0100;
    LUT4 i1_2_lut_rep_22 (.A(n215), .B(n216), .Z(n2829)) /* synthesis lut_function=(A+(B)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i1_2_lut_rep_22.init = 16'heeee;
    FD1S3IX LED_SINK_i3 (.D(n2317), .CK(clk), .CD(n529), .Q(o_LED_SINK_c_2));   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam LED_SINK_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_23 (.A(n213), .B(n214), .Z(n2830)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_23.init = 16'heeee;
    LUT4 i2_2_lut_3_lut_4_lut (.A(n213), .B(n214), .C(n216), .D(n215), 
         .Z(n1297)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_6_2_lut_4_lut_4_lut (.A(n2823), .B(n6), .C(n1493), 
         .D(n2826), .Z(n2813)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_6_2_lut_4_lut_4_lut.init = 16'hffef;
    LUT4 i866_1_lut_2_lut_2_lut_4_lut_4_lut (.A(n2823), .B(n6), .C(n1493), 
         .D(n2826), .Z(n2308)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i866_1_lut_2_lut_2_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i986_2_lut_rep_15 (.A(o_LED_SINK_31__N_1[0]), .B(n1542), .Z(n2822)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i986_2_lut_rep_15.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_6 (.A(o_LED_SINK_31__N_1[0]), .B(n1542), 
         .C(n1297), .D(n1452), .Z(n2234)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_6.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_7 (.A(o_LED_SINK_31__N_1[0]), .B(n1542), 
         .C(n2830), .D(n1452), .Z(n2690)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_7.init = 16'h0010;
    LUT4 i1370_2_lut_rep_8_2_lut_3_lut_4_lut (.A(o_LED_SINK_31__N_1[0]), .B(n1542), 
         .C(n1297), .D(n1452), .Z(n2815)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i1370_2_lut_rep_8_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i2_3_lut_4_lut_adj_8 (.A(o_LED_SINK_31__N_1[0]), .B(n1542), .C(n1335), 
         .D(n1081), .Z(n2694)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_8.init = 16'h0100;
    LUT4 i1366_3_lut_rep_10_3_lut_4_lut (.A(o_LED_SINK_31__N_1[0]), .B(n1542), 
         .C(n1335), .D(n1452), .Z(n2817)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1366_3_lut_rep_10_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_adj_9 (.A(n193), .B(n194), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(48[9] 83[16])
    defparam i1_2_lut_adj_9.init = 16'heeee;
    LUT4 i1_2_lut_rep_14_3_lut (.A(o_LED_SINK_31__N_1[0]), .B(n1542), .C(n1335), 
         .Z(n2821)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_14_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_11_3_lut_4_lut (.A(o_LED_SINK_31__N_1[0]), .B(n1542), 
         .C(n1117), .D(n1335), .Z(n2818)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_11_3_lut_4_lut.init = 16'h0100;
    LUT4 i4_1_lut_2_lut_3_lut_4_lut (.A(o_LED_SINK_31__N_1[0]), .B(n1542), 
         .C(n1117), .D(n1335), .Z(n2176)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i4_1_lut_2_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_10 (.A(o_LED_SINK_31__N_1[0]), .B(n1542), 
         .C(n1117), .D(n1335), .Z(n2751)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_10.init = 16'h1000;
    LUT4 i1_2_lut_rep_24 (.A(n191), .B(n192), .Z(n2831)) /* synthesis lut_function=(A+(B)) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i1_2_lut_rep_24.init = 16'heeee;
    LUT4 i1_2_lut_rep_19_3_lut (.A(n191), .B(n192), .C(n190), .Z(n2826)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/githab/ledarray-controller/source/led_array_sub_top.v(41[21:33])
    defparam i1_2_lut_rep_19_3_lut.init = 16'hfefe;
    GSR GSR_INST (.GSR(i_RESET_n_c));
    TSALL TSALL_INST (.TSALL(GND_net));
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

