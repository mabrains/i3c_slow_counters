module i3c_slow_counters (CLK_SLOW,
    RSTn,
    cf_SlvEna,
    clk_SCL,
    clk_SCL_n,
    done_100,
    done_60,
    force_sda,
    hold_engine,
    int_in_STOP,
    pin_SCL_in,
    pin_SDA_in,
    run_100,
    run_60,
    slow_gate,
    VPWR,
    VGND,
    cf_BAMatch,
    event_pending);
 input CLK_SLOW;
 input RSTn;
 input cf_SlvEna;
 input clk_SCL;
 input clk_SCL_n;
 output done_100;
 output done_60;
 output force_sda;
 output hold_engine;
 input int_in_STOP;
 input pin_SCL_in;
 input pin_SDA_in;
 input run_100;
 input run_60;
 output slow_gate;
 input VPWR;
 input VGND;
 input [7:0] cf_BAMatch;
 input [2:0] event_pending;

 sky130_fd_sc_hd__inv_2 _087_ (.A(request_start),
    .Y(_048_));
 sky130_fd_sc_hd__or2_2 _088_ (.A(net17),
    .B(net18),
    .X(_049_));
 sky130_fd_sc_hd__inv_2 _089_ (.A(_049_),
    .Y(_003_));
 sky130_fd_sc_hd__or2_1 _090_ (.A(_048_),
    .B(_003_),
    .X(_050_));
 sky130_fd_sc_hd__inv_2 _091_ (.A(\mid_cnt[6] ),
    .Y(_051_));
 sky130_fd_sc_hd__inv_2 _092_ (.A(\mid_cnt[5] ),
    .Y(_052_));
 sky130_fd_sc_hd__inv_2 _093_ (.A(\mid_cnt[4] ),
    .Y(_053_));
 sky130_fd_sc_hd__inv_2 _094_ (.A(\mid_cnt[3] ),
    .Y(_054_));
 sky130_fd_sc_hd__inv_2 _095_ (.A(\mid_cnt[1] ),
    .Y(_055_));
 sky130_fd_sc_hd__inv_2 _096_ (.A(\mid_cnt[0] ),
    .Y(_056_));
 sky130_fd_sc_hd__inv_2 _097_ (.A(\mid_cnt[2] ),
    .Y(_057_));
 sky130_fd_sc_hd__or3_1 _098_ (.A(_055_),
    .B(_056_),
    .C(_057_),
    .X(_058_));
 sky130_fd_sc_hd__or2_2 _099_ (.A(_054_),
    .B(_058_),
    .X(_059_));
 sky130_fd_sc_hd__or3_1 _100_ (.A(_052_),
    .B(_053_),
    .C(_059_),
    .X(_060_));
 sky130_fd_sc_hd__inv_2 _101_ (.A(_060_),
    .Y(_061_));
 sky130_fd_sc_hd__inv_2 _102_ (.A(_050_),
    .Y(_062_));
 sky130_fd_sc_hd__inv_2 _103_ (.A(\microsec_cnt[4] ),
    .Y(_063_));
 sky130_fd_sc_hd__inv_2 _104_ (.A(\microsec_cnt[1] ),
    .Y(_064_));
 sky130_fd_sc_hd__inv_2 _105_ (.A(\microsec_cnt[0] ),
    .Y(_065_));
 sky130_fd_sc_hd__inv_2 _106_ (.A(\microsec_cnt[3] ),
    .Y(_066_));
 sky130_fd_sc_hd__or4b_4 _107_ (.A(_064_),
    .B(_065_),
    .C(_066_),
    .D_N(\microsec_cnt[2] ),
    .X(_067_));
 sky130_fd_sc_hd__inv_2 _108_ (.A(_067_),
    .Y(_068_));
 sky130_fd_sc_hd__and3_1 _109_ (.A(\microsec_cnt[5] ),
    .B(_063_),
    .C(_068_),
    .X(_069_));
 sky130_fd_sc_hd__and3_1 _110_ (.A(net18),
    .B(_062_),
    .C(_069_),
    .X(_070_));
 sky130_fd_sc_hd__inv_2 _111_ (.A(net18),
    .Y(_071_));
 sky130_fd_sc_hd__or4_4 _112_ (.A(\mid_cnt[1] ),
    .B(\mid_cnt[0] ),
    .C(\mid_cnt[4] ),
    .D(\mid_cnt[3] ),
    .X(_072_));
 sky130_fd_sc_hd__and4b_1 _113_ (.A_N(_072_),
    .B(\mid_cnt[5] ),
    .C(\mid_cnt[2] ),
    .D(\mid_cnt[6] ),
    .X(_073_));
 sky130_fd_sc_hd__a41o_1 _114_ (.A1(_071_),
    .A2(_062_),
    .A3(_073_),
    .A4(_069_),
    .B1(_002_),
    .X(_074_));
 sky130_fd_sc_hd__a31o_1 _115_ (.A1(_051_),
    .A2(_061_),
    .A3(_070_),
    .B1(_074_),
    .X(_075_));
 sky130_fd_sc_hd__or2_1 _116_ (.A(_050_),
    .B(_075_),
    .X(_076_));
 sky130_fd_sc_hd__buf_1 _117_ (.A(_076_),
    .X(_077_));
 sky130_fd_sc_hd__o22a_1 _118_ (.A1(\mid_cnt[6] ),
    .A2(_060_),
    .B1(_051_),
    .B2(_061_),
    .X(_078_));
 sky130_fd_sc_hd__a2bb2o_1 _119_ (.A1_N(_077_),
    .A2_N(_078_),
    .B1(\mid_cnt[6] ),
    .B2(_074_),
    .X(_020_));
 sky130_fd_sc_hd__o21a_1 _120_ (.A1(_053_),
    .A2(_059_),
    .B1(_052_),
    .X(_079_));
 sky130_fd_sc_hd__inv_2 _121_ (.A(_075_),
    .Y(_080_));
 sky130_fd_sc_hd__o32a_1 _122_ (.A1(_061_),
    .A2(_079_),
    .A3(_077_),
    .B1(_052_),
    .B2(_080_),
    .X(_081_));
 sky130_fd_sc_hd__inv_2 _123_ (.A(_081_),
    .Y(_019_));
 sky130_fd_sc_hd__inv_2 _124_ (.A(_059_),
    .Y(_082_));
 sky130_fd_sc_hd__a22o_1 _125_ (.A1(\mid_cnt[4] ),
    .A2(_082_),
    .B1(_053_),
    .B2(_059_),
    .X(_083_));
 sky130_fd_sc_hd__o22ai_1 _126_ (.A1(_053_),
    .A2(_080_),
    .B1(_077_),
    .B2(_083_),
    .Y(_018_));
 sky130_fd_sc_hd__inv_2 _127_ (.A(_058_),
    .Y(_084_));
 sky130_fd_sc_hd__nor2_1 _128_ (.A(\mid_cnt[3] ),
    .B(_084_),
    .Y(_085_));
 sky130_fd_sc_hd__o32a_1 _129_ (.A1(_082_),
    .A2(_085_),
    .A3(_076_),
    .B1(_054_),
    .B2(_080_),
    .X(_086_));
 sky130_fd_sc_hd__inv_2 _130_ (.A(_086_),
    .Y(_017_));
 sky130_fd_sc_hd__o21a_1 _131_ (.A1(_055_),
    .A2(_056_),
    .B1(_057_),
    .X(_022_));
 sky130_fd_sc_hd__o32a_1 _132_ (.A1(_084_),
    .A2(_022_),
    .A3(_076_),
    .B1(_057_),
    .B2(_080_),
    .X(_023_));
 sky130_fd_sc_hd__inv_2 _133_ (.A(_023_),
    .Y(_016_));
 sky130_fd_sc_hd__a22o_1 _134_ (.A1(_055_),
    .A2(_056_),
    .B1(\mid_cnt[1] ),
    .B2(\mid_cnt[0] ),
    .X(_024_));
 sky130_fd_sc_hd__o22ai_1 _135_ (.A1(_055_),
    .A2(_080_),
    .B1(_077_),
    .B2(_024_),
    .Y(_015_));
 sky130_fd_sc_hd__o2bb2a_1 _136_ (.A1_N(_056_),
    .A2_N(_077_),
    .B1(_056_),
    .B2(_075_),
    .X(_014_));
 sky130_fd_sc_hd__clkbuf_1 _137_ (.A(check_idle_n),
    .X(_013_));
 sky130_fd_sc_hd__nor2_1 _138_ (.A(_063_),
    .B(_067_),
    .Y(_025_));
 sky130_fd_sc_hd__o211ai_1 _139_ (.A1(\microsec_cnt[4] ),
    .A2(_049_),
    .B1(\microsec_cnt[5] ),
    .C1(_068_),
    .Y(_026_));
 sky130_fd_sc_hd__o211a_1 _140_ (.A1(\microsec_cnt[5] ),
    .A2(_025_),
    .B1(request_start),
    .C1(_026_),
    .X(_012_));
 sky130_fd_sc_hd__nor2_1 _141_ (.A(_048_),
    .B(_069_),
    .Y(_004_));
 sky130_fd_sc_hd__o221a_1 _142_ (.A1(_063_),
    .A2(_067_),
    .B1(\microsec_cnt[4] ),
    .B2(_068_),
    .C1(_004_),
    .X(_011_));
 sky130_fd_sc_hd__buf_1 _143_ (.A(\microsec_cnt[0] ),
    .X(_027_));
 sky130_fd_sc_hd__and3_1 _144_ (.A(\microsec_cnt[1] ),
    .B(_027_),
    .C(\microsec_cnt[2] ),
    .X(_028_));
 sky130_fd_sc_hd__or2_2 _145_ (.A(_062_),
    .B(_004_),
    .X(_029_));
 sky130_fd_sc_hd__or4_4 _146_ (.A(\microsec_cnt[5] ),
    .B(\microsec_cnt[4] ),
    .C(\microsec_cnt[3] ),
    .D(\microsec_cnt[2] ),
    .X(_030_));
 sky130_fd_sc_hd__or3_4 _147_ (.A(\microsec_cnt[1] ),
    .B(_027_),
    .C(_030_),
    .X(_031_));
 sky130_fd_sc_hd__a21oi_2 _148_ (.A1(_048_),
    .A2(_031_),
    .B1(_029_),
    .Y(_032_));
 sky130_fd_sc_hd__and2b_1 _149_ (.A_N(_028_),
    .B(_029_),
    .X(_033_));
 sky130_fd_sc_hd__or2_1 _150_ (.A(_032_),
    .B(_033_),
    .X(_034_));
 sky130_fd_sc_hd__a32o_1 _151_ (.A1(_066_),
    .A2(_028_),
    .A3(_029_),
    .B1(\microsec_cnt[3] ),
    .B2(_034_),
    .X(_010_));
 sky130_fd_sc_hd__a32o_1 _152_ (.A1(\microsec_cnt[1] ),
    .A2(_027_),
    .A3(_033_),
    .B1(\microsec_cnt[2] ),
    .B2(_034_),
    .X(_009_));
 sky130_fd_sc_hd__o22a_1 _153_ (.A1(_064_),
    .A2(_065_),
    .B1(\microsec_cnt[1] ),
    .B2(_027_),
    .X(_035_));
 sky130_fd_sc_hd__a22o_1 _154_ (.A1(\microsec_cnt[2] ),
    .A2(_032_),
    .B1(_029_),
    .B2(_035_),
    .X(_008_));
 sky130_fd_sc_hd__o22a_1 _155_ (.A1(_065_),
    .A2(_032_),
    .B1(_027_),
    .B2(_029_),
    .X(_007_));
 sky130_fd_sc_hd__or2_1 _156_ (.A(net12),
    .B(net11),
    .X(_036_));
 sky130_fd_sc_hd__inv_2 _157_ (.A(net12),
    .Y(_037_));
 sky130_fd_sc_hd__inv_2 _158_ (.A(net11),
    .Y(_038_));
 sky130_fd_sc_hd__o2111a_1 _159_ (.A1(_037_),
    .A2(_038_),
    .B1(request_start),
    .C1(_036_),
    .D1(_069_),
    .X(net21));
 sky130_fd_sc_hd__o21a_1 _160_ (.A1(\sync_sclsda_state.clk_copy ),
    .A2(net21),
    .B1(net14),
    .X(_039_));
 sky130_fd_sc_hd__o221a_2 _161_ (.A1(_049_),
    .A2(_036_),
    .B1(_049_),
    .B2(_039_),
    .C1(net10),
    .X(_040_));
 sky130_fd_sc_hd__inv_2 _162_ (.A(\sync_idle_check.clk_copy ),
    .Y(_041_));
 sky130_fd_sc_hd__inv_2 _163_ (.A(_040_),
    .Y(_042_));
 sky130_fd_sc_hd__o22a_1 _164_ (.A1(\sync_idle_check.clk_copy ),
    .A2(_040_),
    .B1(_041_),
    .B2(_042_),
    .X(_006_));
 sky130_fd_sc_hd__inv_2 _165_ (.A(\sync_idle_check_n.clk_copy ),
    .Y(_043_));
 sky130_fd_sc_hd__o22a_1 _166_ (.A1(\sync_idle_check_n.clk_copy ),
    .A2(_040_),
    .B1(_043_),
    .B2(_042_),
    .X(_005_));
 sky130_fd_sc_hd__or4_4 _167_ (.A(\mid_cnt[6] ),
    .B(\mid_cnt[5] ),
    .C(\mid_cnt[2] ),
    .D(_072_),
    .X(_044_));
 sky130_fd_sc_hd__inv_2 _168_ (.A(_044_),
    .Y(_001_));
 sky130_fd_sc_hd__or3_1 _169_ (.A(_049_),
    .B(_036_),
    .C(request_start),
    .X(_045_));
 sky130_fd_sc_hd__nor3_2 _170_ (.A(_031_),
    .B(_045_),
    .C(_044_),
    .Y(net23));
 sky130_fd_sc_hd__and2_1 _171_ (.A(net16),
    .B(net15),
    .X(\sync_sclsda_state.scl_data ));
 sky130_fd_sc_hd__and2_1 _172_ (.A(net17),
    .B(_073_),
    .X(net19));
 sky130_fd_sc_hd__and3_1 _173_ (.A(_051_),
    .B(_061_),
    .C(net18),
    .X(net20));
 sky130_fd_sc_hd__o2bb2a_1 _174_ (.A1_N(check_idle),
    .A2_N(_041_),
    .B1(check_idle),
    .B2(_041_),
    .X(_046_));
 sky130_fd_sc_hd__o2bb2a_1 _175_ (.A1_N(check_idle_n),
    .A2_N(_043_),
    .B1(check_idle_n),
    .B2(_043_),
    .X(_047_));
 sky130_fd_sc_hd__nor3_1 _176_ (.A(_046_),
    .B(_047_),
    .C(_042_),
    .Y(_000_));
 sky130_fd_sc_hd__clkbuf_1 _177_ (.A(check_idle),
    .X(_021_));
 sky130_fd_sc_hd__conb_1 _178_ (.LO(net22));
 sky130_fd_sc_hd__mux2_1 _179_ (.A0(_004_),
    .A1(_001_),
    .S(_003_),
    .X(_002_));
 sky130_fd_sc_hd__dfrtp_4 _180_ (.D(_000_),
    .Q(request_start),
    .RESET_B(net24),
    .CLK(clknet_1_1_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _181_ (.D(\sync_idle_check.scl_data ),
    .Q(\sync_idle_check.clk_copy ),
    .RESET_B(net1),
    .CLK(clknet_1_0_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _182_ (.D(\sync_idle_check_n.scl_data ),
    .Q(\sync_idle_check_n.clk_copy ),
    .RESET_B(net24),
    .CLK(clknet_1_0_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _183_ (.D(\sync_sclsda_state.scl_data ),
    .Q(\sync_sclsda_state.clk_copy ),
    .RESET_B(net24),
    .CLK(clknet_1_1_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _184_ (.D(_005_),
    .Q(check_idle_n),
    .RESET_B(net24),
    .CLK(clknet_1_0_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _185_ (.D(_006_),
    .Q(check_idle),
    .RESET_B(net24),
    .CLK(clknet_1_0_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _186_ (.D(_007_),
    .Q(\microsec_cnt[0] ),
    .RESET_B(net24),
    .CLK(clknet_1_1_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_4 _187_ (.D(_008_),
    .Q(\microsec_cnt[1] ),
    .RESET_B(net24),
    .CLK(clknet_1_1_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _188_ (.D(_009_),
    .Q(\microsec_cnt[2] ),
    .RESET_B(net24),
    .CLK(clknet_1_1_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _189_ (.D(_010_),
    .Q(\microsec_cnt[3] ),
    .RESET_B(net24),
    .CLK(clknet_1_1_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_4 _190_ (.D(_011_),
    .Q(\microsec_cnt[4] ),
    .RESET_B(net24),
    .CLK(clknet_1_1_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _191_ (.D(_012_),
    .Q(\microsec_cnt[5] ),
    .RESET_B(net24),
    .CLK(clknet_1_1_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _192_ (.D(_013_),
    .Q(\sync_idle_check_n.scl_data ),
    .RESET_B(net24),
    .CLK(clk_SCL_n));
 sky130_fd_sc_hd__dfrtp_1 _193_ (.D(_014_),
    .Q(\mid_cnt[0] ),
    .RESET_B(net24),
    .CLK(clknet_1_0_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _194_ (.D(_015_),
    .Q(\mid_cnt[1] ),
    .RESET_B(net24),
    .CLK(clknet_1_0_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _195_ (.D(_016_),
    .Q(\mid_cnt[2] ),
    .RESET_B(net24),
    .CLK(clknet_1_0_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _196_ (.D(_017_),
    .Q(\mid_cnt[3] ),
    .RESET_B(net24),
    .CLK(clknet_1_0_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _197_ (.D(_018_),
    .Q(\mid_cnt[4] ),
    .RESET_B(net24),
    .CLK(clknet_1_0_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _198_ (.D(_019_),
    .Q(\mid_cnt[5] ),
    .RESET_B(net24),
    .CLK(clknet_1_1_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_4 _199_ (.D(_020_),
    .Q(\mid_cnt[6] ),
    .RESET_B(net24),
    .CLK(clknet_1_1_0_CLK_SLOW));
 sky130_fd_sc_hd__dfrtp_1 _200_ (.D(_021_),
    .Q(\sync_idle_check.scl_data ),
    .RESET_B(net1),
    .CLK(clk_SCL));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_44 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_45 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_46 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_47 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_48 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_49 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_50 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_51 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_52 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_83 ();
 sky130_fd_sc_hd__clkbuf_2 input1 (.A(RSTn),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input2 (.A(cf_BAMatch[0]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(cf_BAMatch[1]),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(cf_BAMatch[2]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(cf_BAMatch[3]),
    .X(net5));
 sky130_fd_sc_hd__buf_1 input6 (.A(cf_BAMatch[4]),
    .X(net6));
 sky130_fd_sc_hd__buf_1 input7 (.A(cf_BAMatch[5]),
    .X(net7));
 sky130_fd_sc_hd__buf_1 input8 (.A(cf_BAMatch[6]),
    .X(net8));
 sky130_fd_sc_hd__buf_1 input9 (.A(cf_BAMatch[7]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_1 input10 (.A(cf_SlvEna),
    .X(net10));
 sky130_fd_sc_hd__buf_1 input11 (.A(event_pending[0]),
    .X(net11));
 sky130_fd_sc_hd__buf_1 input12 (.A(event_pending[1]),
    .X(net12));
 sky130_fd_sc_hd__buf_1 input13 (.A(event_pending[2]),
    .X(net13));
 sky130_fd_sc_hd__buf_1 input14 (.A(int_in_STOP),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_1 input15 (.A(pin_SCL_in),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_1 input16 (.A(pin_SDA_in),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_1 input17 (.A(run_100),
    .X(net17));
 sky130_fd_sc_hd__buf_1 input18 (.A(run_60),
    .X(net18));
 sky130_fd_sc_hd__buf_1 output19 (.A(net19),
    .X(done_100));
 sky130_fd_sc_hd__buf_1 output20 (.A(net20),
    .X(done_60));
 sky130_fd_sc_hd__buf_1 output21 (.A(net21),
    .X(force_sda));
 sky130_fd_sc_hd__buf_1 output22 (.A(net22),
    .X(hold_engine));
 sky130_fd_sc_hd__buf_1 output23 (.A(net23),
    .X(slow_gate));
 sky130_fd_sc_hd__buf_8 repeater24 (.A(net1),
    .X(net24));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_CLK_SLOW (.A(CLK_SLOW),
    .X(clknet_0_CLK_SLOW));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_1_0_0_CLK_SLOW (.A(clknet_0_CLK_SLOW),
    .X(clknet_1_0_0_CLK_SLOW));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_1_1_0_CLK_SLOW (.A(clknet_0_CLK_SLOW),
    .X(clknet_1_1_0_CLK_SLOW));
 sky130_fd_sc_hd__decap_12 FILLER_0_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_26 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_30 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_42 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_59 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_66 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_81 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_88 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_95 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_102 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_108 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_112 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_58 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_115 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_23 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_58 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_62 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_68 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_98 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_102 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_106 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_28 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_35 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_47 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_56 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_66 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_73 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_86 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_95 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_103 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_115 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_30 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_38 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_61 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_73 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_82 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_12 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_20 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_25 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_40 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_51 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_72 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_76 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_82 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_90 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_98 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_115 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_30 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_41 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_54 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_61 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_68 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_87 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_94 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_103 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_110 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_116 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_20 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_44 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_56 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_58 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_65 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_74 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_81 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_93 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_103 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_115 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_23 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_42 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_66 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_72 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_85 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_100 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_109 ();
 sky130_fd_sc_hd__decap_12 FILLER_9_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_33 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_40 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_47 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_55 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_58 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_97 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_108 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_115 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_10_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_85 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_103 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_110 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_116 ();
 sky130_fd_sc_hd__decap_12 FILLER_11_6 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_36 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_42 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_46 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_62 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_68 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_81 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_28 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_40 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_60 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_73 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_96 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_103 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_109 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_113 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_27 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_45 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_53 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_58 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_69 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_90 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_99 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_106 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_115 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_14 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_22 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_28 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_38 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_48 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_62 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_69 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_76 ();
 sky130_fd_sc_hd__fill_2 FILLER_14_84 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_95 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_101 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_110 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_116 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_20 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_35 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_47 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_55 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_64 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_96 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_113 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_115 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_12 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_23 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_37 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_41 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_51 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_66 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_78 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_102 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_112 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_116 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_23 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_47 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_55 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_85 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_89 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_110 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_115 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_14 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_20 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_28 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_18_39 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_51 ();
 sky130_fd_sc_hd__decap_3 FILLER_18_59 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_67 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_74 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_81 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_91 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_95 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_104 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_12 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_16 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_28 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_37 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_54 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_59 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_67 ();
 sky130_fd_sc_hd__decap_12 FILLER_19_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_88 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_95 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_101 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_105 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_112 ();
endmodule
