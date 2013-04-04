## fpgaTop.xdc for hdmi output application
## KC705 Rev C XDC
## Shepard Siegel for Atomic Rules LLC
## 2013-01-03 cloned from ucf
## 2013-01-26 Added FMC LPC pads
## 2013-02-06 Added GMII IO Constraints
## 2012-02-17 Hotline IP debugging

# 200 MHz XO...
set_property PACKAGE_PIN AD12 [get_ports sys0_clkp]
set_property PACKAGE_PIN AD11 [get_ports sys0_clkn]
set_property IOSTANDARD LVDS [get_ports sys0_clkp]
set_property IOSTANDARD LVDS [get_ports sys0_clkn]
create_clock -period 5.000 -name sys0_clkp -waveform {0.000 2.500} [get_ports sys0_clkp]

# 125 MHz GTX Clock...
set_property PACKAGE_PIN G8 [get_ports sys1_clkp]
set_property PACKAGE_PIN G7 [get_ports sys1_clkn]
create_clock -period 8.000 -name sys1_clkp -waveform {0.000 4.000} [get_ports sys1_clkp]

# SI570 Clock Input
set_property PACKAGE_PIN K28 [get_ports sys2_clkp]
set_property PACKAGE_PIN K29 [get_ports sys2_clkn]
set_property IOSTANDARD LVDS_25 [get_ports sys2_clkp]
set_property IOSTANDARD LVDS_25 [get_ports sys2_clkn]
create_clock -period 6.734 -name sys2_clkp -waveform {0.000 3.367} [get_ports sys2_clkp] ;# 148.5 MHz
#create_clock -period 6.400 -name sys2_clkp -waveform {0.000 3.200} [get_ports sys2_clkp] ;# 156.25 MHz

# User SMA Inputs J11, J12
#set_property PACKAGE_PIN L25        [get_ports sys3_clkp]
#set_property IOSTANDARD LVDS_25     [get_ports sys3_clkp]
#set_property PACKAGE_PIN K25        [get_ports sys3_clkn]
#set_property IOSTANDARD LVDS_25     [get_ports sys3_clkn]
#create_clock -name sys3_clkp -period 5.0 -waveform {0 2.5} [get_ports sys3_clkp]

set_property PACKAGE_PIN AB7 [get_ports sys0_rst]
set_property IOSTANDARD LVCMOS15 [get_ports sys0_rst]

## GbE GMII...
set_property PACKAGE_PIN N27 [get_ports {gmii_txd[0]}]
set_property PACKAGE_PIN N25 [get_ports {gmii_txd[1]}]
set_property PACKAGE_PIN M29 [get_ports {gmii_txd[2]}]
set_property PACKAGE_PIN L28 [get_ports {gmii_txd[3]}]
set_property PACKAGE_PIN J26 [get_ports {gmii_txd[4]}]
set_property PACKAGE_PIN K26 [get_ports {gmii_txd[5]}]
set_property PACKAGE_PIN L30 [get_ports {gmii_txd[6]}]
set_property PACKAGE_PIN J28 [get_ports {gmii_txd[7]}]
set_property PACKAGE_PIN M27 [get_ports  gmii_tx_en]
set_property PACKAGE_PIN N29 [get_ports  gmii_tx_er] 
set_property PACKAGE_PIN K30 [get_ports  gmii_gtx_clk]  ;# gtx_clk is 125MHz TX source-sync for TX data
#set_property PACKAGE_PIN M28 [get_ports gmii_tx_clk]   ;# output from PHY only in 10,100 Mb modes; not used 1Gb
set_property PACKAGE_PIN U30 [get_ports {gmii_rxd[0]}]
set_property PACKAGE_PIN U25 [get_ports {gmii_rxd[1]}]
set_property PACKAGE_PIN T25 [get_ports {gmii_rxd[2]}]
set_property PACKAGE_PIN U28 [get_ports {gmii_rxd[3]}]
set_property PACKAGE_PIN R19 [get_ports {gmii_rxd[4]}]
set_property PACKAGE_PIN T27 [get_ports {gmii_rxd[5]}]
set_property PACKAGE_PIN T26 [get_ports {gmii_rxd[6]}]
set_property PACKAGE_PIN T28 [get_ports {gmii_rxd[7]}]
set_property PACKAGE_PIN R28 [get_ports  gmii_rx_dv]
set_property PACKAGE_PIN V26 [get_ports  gmii_rx_er]
set_property PACKAGE_PIN U27 [get_ports  gmii_rx_clk]
set_property PACKAGE_PIN W19 [get_ports  gmii_col]
set_property PACKAGE_PIN R30 [get_ports  gmii_crs]
set_property PACKAGE_PIN N30 [get_ports  gmii_intr]
set_property PACKAGE_PIN L20 [get_ports  gmii_rstn]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_*]
## GbE MDIO...
set_property PACKAGE_PIN R23 [get_ports mdio_mdc]
set_property PACKAGE_PIN J21 [get_ports mdio_mdd]
set_property IOSTANDARD LVCMOS25 [get_ports mdio_*]

# GMII Rx Timing Constraints ...
create_clock -period 8.000 -name gmiirx_clk -waveform {0.000 4.000} [get_ports gmii_rx_clk]
set_input_delay -clock gmiirx_clk -max 5.500 [get_ports gmii_rxd*]
set_input_delay -clock gmiirx_clk -min 0.500 [get_ports gmii_rxd*]
set_input_delay -clock gmiirx_clk -max 5.500 [get_ports {gmii_rx_dv gmii_rx_er}]
set_input_delay -clock gmiirx_clk -min 0.500 [get_ports {gmii_rx_dv gmii_rx_er}]

# GMII Tx Timing Constraints ...
# Pos Edge Output Delay Constraint Skew Based (no output delay requirements as source-sync)..
create_clock -period 8.000 -name gmiiTx_clk -waveform {0.000 4.000} [get_ports gmii_gtx_clk]
#set gmiiTx_max_pos_skew          2.000; # Worst-Case Data AFTER  source-sync clock
#set gmiiTx_neg_pos_skew          2.000; # Worst-Case Data BEFORE source-sync clock
#set gmiiTx_pos_period            8.000; # 125 MHz
#set gmiiTx_pos_dest_setup        2.000; # Per Alaska GMII spec
#set gmiiTx_pos_dest_hold         0.000; # Per Alaska GMII spec
#set gmiiTx_pos_dest_trce_dly_max 0.000;
#set gmiiTx_pos_dest_trce_dly_min 0.000;
#set gmiiTx_pos_out_ports     [get_ports {gmii_txd* gmii_tx_en gmii_tx_er}];
#set gmiiTx_pos_generated_clk gmiiTx_clk;
#set_output_delay -clock $gmiiTx_pos_generated_clk -max [expr $gmiiTx_pos_period - $gmiiTx_max_pos_skew] [get_ports $gmiiTx_pos_out_ports];
#set_output_delay -clock $gmiiTx_pos_generated_clk -min $gmiiTx_neg_pos_skew [get_ports $gmiiTx_pos_out_ports]
#report_timing -to [get_ports $gmiiTx_pos_out_ports] -max_paths 20 -nworst 1 -delay_type min_max -name src_sync_pos_out
   


# LEDs
set_property PACKAGE_PIN AB8 [get_ports {led[0]}]
set_property PACKAGE_PIN AA8 [get_ports {led[1]}]
set_property PACKAGE_PIN AC9 [get_ports {led[2]}]
set_property PACKAGE_PIN AB9 [get_ports {led[3]}]
set_property PACKAGE_PIN AE26 [get_ports {led[4]}]
set_property PACKAGE_PIN G19 [get_ports {led[5]}]
set_property PACKAGE_PIN E18 [get_ports {led[6]}]
set_property PACKAGE_PIN F16 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS15 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS15 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS15 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS15 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS25 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS25 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS25 [get_ports {led[7]}]
set_property SLEW SLOW [get_ports {led[*]}]
set_property DRIVE 4 [get_ports {led[*]}]

set_property PACKAGE_PIN Y10 [get_ports {lcd_db[3]}]
set_property PACKAGE_PIN AA11 [get_ports {lcd_db[2]}]
set_property PACKAGE_PIN AA10 [get_ports {lcd_db[1]}]
set_property PACKAGE_PIN AA13 [get_ports {lcd_db[0]}]
set_property PACKAGE_PIN AB10 [get_ports lcd_e]
set_property PACKAGE_PIN Y11 [get_ports lcd_rs]
set_property PACKAGE_PIN AB13 [get_ports lcd_rw]
set_property IOSTANDARD LVCMOS15 [get_ports lcd_*]
set_property SLEW SLOW [get_ports lcd_*]
set_property DRIVE 4 [get_ports lcd_*]

set_property PACKAGE_PIN Y29 [get_ports {dipsw[0]}]
set_property PACKAGE_PIN W29 [get_ports {dipsw[1]}]
set_property PACKAGE_PIN AA28 [get_ports {dipsw[2]}]
set_property PACKAGE_PIN Y28 [get_ports {dipsw[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dipsw[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dipsw[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dipsw[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {dipsw[3]}]

# GPIX (GPIO), GPIY (USRCLK) SMAs 
set_property PACKAGE_PIN Y23 [get_ports gpix_p]
set_property PACKAGE_PIN Y24 [get_ports gpix_n]
set_property IOSTANDARD LVCMOS25 [get_ports gpix_p]
set_property IOSTANDARD LVCMOS25 [get_ports gpix_n]
set_property PACKAGE_PIN L25 [get_ports gpiy_p]
set_property PACKAGE_PIN K25 [get_ports gpiy_n]
set_property IOSTANDARD LVCMOS25 [get_ports gpiy_p]
set_property IOSTANDARD LVCMOS25 [get_ports gpiy_n]


# IIC PCA9548
set_property PACKAGE_PIN K21 [get_ports i2c_scl]
set_property PACKAGE_PIN L21 [get_ports i2c_sda]
set_property PACKAGE_PIN P23 [get_ports i2c_rstb]
set_property IOSTANDARD LVCMOS25 [get_ports i2c_*]
set_property SLEW SLOW [get_ports i2c_*]

# HDMI ADV7511
set_property PACKAGE_PIN K18 [get_ports hdmiout_clk]
set_property PACKAGE_PIN B23 [get_ports {hdmiout_data[0]}]
set_property PACKAGE_PIN A23 [get_ports {hdmiout_data[1]}]
set_property PACKAGE_PIN E23 [get_ports {hdmiout_data[2]}]
set_property PACKAGE_PIN D23 [get_ports {hdmiout_data[3]}]
set_property PACKAGE_PIN F25 [get_ports {hdmiout_data[4]}]
set_property PACKAGE_PIN E25 [get_ports {hdmiout_data[5]}]
set_property PACKAGE_PIN E24 [get_ports {hdmiout_data[6]}]
set_property PACKAGE_PIN D24 [get_ports {hdmiout_data[7]}]
set_property PACKAGE_PIN F26 [get_ports {hdmiout_data[8]}]
set_property PACKAGE_PIN E26 [get_ports {hdmiout_data[9]}]
set_property PACKAGE_PIN G23 [get_ports {hdmiout_data[10]}]
set_property PACKAGE_PIN G24 [get_ports {hdmiout_data[11]}]
set_property PACKAGE_PIN J19 [get_ports {hdmiout_data[12]}]
set_property PACKAGE_PIN H19 [get_ports {hdmiout_data[13]}]
set_property PACKAGE_PIN L17 [get_ports {hdmiout_data[14]}]
set_property PACKAGE_PIN L18 [get_ports {hdmiout_data[15]}]
set_property PACKAGE_PIN H17 [get_ports hdmiout_de]
set_property PACKAGE_PIN J18 [get_ports hdmiout_hs]
set_property PACKAGE_PIN H20 [get_ports hdmiout_vs]
set_property IOSTANDARD LVCMOS25 [get_ports hdmiout_*]

# HPC FMC 
set_property PACKAGE_PIN D27 [get_ports fmch_clk0_p]
set_property PACKAGE_PIN C25 [get_ports fmch_la00_p]
set_property PACKAGE_PIN D26 [get_ports fmch_la01_p]
set_property PACKAGE_PIN H24 [get_ports fmch_la02_p]
set_property PACKAGE_PIN H26 [get_ports fmch_la03_p]
set_property PACKAGE_PIN G28 [get_ports fmch_la04_p]
set_property PACKAGE_PIN G29 [get_ports fmch_la05_p]
set_property PACKAGE_PIN H30 [get_ports fmch_la06_p]
set_property PACKAGE_PIN E28 [get_ports fmch_la07_p]
set_property PACKAGE_PIN E29 [get_ports fmch_la08_p]
set_property PACKAGE_PIN B30 [get_ports fmch_la09_p]
set_property PACKAGE_PIN D29 [get_ports fmch_la10_p]
set_property PACKAGE_PIN G27 [get_ports fmch_la11_p]
set_property PACKAGE_PIN C29 [get_ports fmch_la12_p]
set_property PACKAGE_PIN A25 [get_ports fmch_la13_p]
set_property PACKAGE_PIN B28 [get_ports fmch_la14_p]
set_property PACKAGE_PIN C24 [get_ports fmch_la15_p]
set_property PACKAGE_PIN B27 [get_ports fmch_la16_p]
set_property PACKAGE_PIN F20 [get_ports fmch_la17_p]
set_property PACKAGE_PIN F21 [get_ports fmch_la18_p]
set_property PACKAGE_PIN G18 [get_ports fmch_la19_p]
set_property PACKAGE_PIN E19 [get_ports fmch_la20_p]
set_property PACKAGE_PIN A20 [get_ports fmch_la21_p]
set_property PACKAGE_PIN C20 [get_ports fmch_la22_p]
set_property PACKAGE_PIN B22 [get_ports fmch_la23_p]
set_property PACKAGE_PIN A16 [get_ports fmch_la24_p]
set_property PACKAGE_PIN G17 [get_ports fmch_la25_p]
set_property PACKAGE_PIN B18 [get_ports fmch_la26_p]
set_property PACKAGE_PIN C19 [get_ports fmch_la27_p]
set_property PACKAGE_PIN D16 [get_ports fmch_la28_p]
set_property PACKAGE_PIN C17 [get_ports fmch_la29_p]
set_property PACKAGE_PIN D22 [get_ports fmch_la30_p]
set_property PACKAGE_PIN G22 [get_ports fmch_la31_p]
set_property PACKAGE_PIN D21 [get_ports fmch_la32_p]

set_property PACKAGE_PIN D17 [get_ports fmch_clk1_p]
set_property PACKAGE_PIN B25 [get_ports fmch_la00_n]
set_property PACKAGE_PIN C26 [get_ports fmch_la01_n]
set_property PACKAGE_PIN H25 [get_ports fmch_la02_n]
set_property PACKAGE_PIN H27 [get_ports fmch_la03_n]
set_property PACKAGE_PIN F28 [get_ports fmch_la04_n]
set_property PACKAGE_PIN F30 [get_ports fmch_la05_n]
set_property PACKAGE_PIN G30 [get_ports fmch_la06_n]
set_property PACKAGE_PIN D28 [get_ports fmch_la07_n]
set_property PACKAGE_PIN E30 [get_ports fmch_la08_n]
set_property PACKAGE_PIN A30 [get_ports fmch_la09_n]
set_property PACKAGE_PIN C30 [get_ports fmch_la10_n]
set_property PACKAGE_PIN F27 [get_ports fmch_la11_n]
set_property PACKAGE_PIN B29 [get_ports fmch_la12_n]
set_property PACKAGE_PIN A26 [get_ports fmch_la13_n]
set_property PACKAGE_PIN A28 [get_ports fmch_la14_n]
set_property PACKAGE_PIN B24 [get_ports fmch_la15_n]
set_property PACKAGE_PIN A27 [get_ports fmch_la16_n]
set_property PACKAGE_PIN E20 [get_ports fmch_la17_n]
set_property PACKAGE_PIN E21 [get_ports fmch_la18_n]
set_property PACKAGE_PIN F18 [get_ports fmch_la19_n]
set_property PACKAGE_PIN D19 [get_ports fmch_la20_n]
set_property PACKAGE_PIN A21 [get_ports fmch_la21_n]
set_property PACKAGE_PIN B20 [get_ports fmch_la22_n]
set_property PACKAGE_PIN A22 [get_ports fmch_la23_n]
set_property PACKAGE_PIN A17 [get_ports fmch_la24_n]
set_property PACKAGE_PIN F17 [get_ports fmch_la25_n]
set_property PACKAGE_PIN A18 [get_ports fmch_la26_n]
set_property PACKAGE_PIN B19 [get_ports fmch_la27_n]
set_property PACKAGE_PIN C16 [get_ports fmch_la28_n]
set_property PACKAGE_PIN B17 [get_ports fmch_la29_n]
set_property PACKAGE_PIN C22 [get_ports fmch_la30_n]
set_property PACKAGE_PIN F22 [get_ports fmch_la31_n]
set_property PACKAGE_PIN C21 [get_ports fmch_la32_n]
set_property IOSTANDARD LVCMOS25 [get_ports fmch_*]

#LPC FMC...
#set_property PACKAGE_PIN AG23 [get_ports fmcl_clk0_n]
set_property PACKAGE_PIN AF22 [get_ports fmcl_clk0_p]
#set_property PACKAGE_PIN AH29 [get_ports fmcl_clk1_n]
set_property PACKAGE_PIN AG29 [get_ports fmcl_clk1_p]
set_property PACKAGE_PIN AE24 [get_ports fmcl_la00_n]
set_property PACKAGE_PIN AD23 [get_ports fmcl_la00_p]
set_property PACKAGE_PIN AF23 [get_ports fmcl_la01_n]
set_property PACKAGE_PIN AE23 [get_ports fmcl_la01_p]
set_property PACKAGE_PIN AF21 [get_ports fmcl_la02_n]
set_property PACKAGE_PIN AF20 [get_ports fmcl_la02_p]
set_property PACKAGE_PIN AH20 [get_ports fmcl_la03_n]
set_property PACKAGE_PIN AG20 [get_ports fmcl_la03_p]
set_property PACKAGE_PIN AJ21 [get_ports fmcl_la04_n]
set_property PACKAGE_PIN AH21 [get_ports fmcl_la04_p]
set_property PACKAGE_PIN AH22 [get_ports fmcl_la05_n]
set_property PACKAGE_PIN AG22 [get_ports fmcl_la05_p]
set_property PACKAGE_PIN AK21 [get_ports fmcl_la06_n]
set_property PACKAGE_PIN AK20 [get_ports fmcl_la06_p]
set_property PACKAGE_PIN AH25 [get_ports fmcl_la07_n]
set_property PACKAGE_PIN AG25 [get_ports fmcl_la07_p]
set_property PACKAGE_PIN AJ23 [get_ports fmcl_la08_n]
set_property PACKAGE_PIN AJ22 [get_ports fmcl_la08_p]
set_property PACKAGE_PIN AK24 [get_ports fmcl_la09_n]
set_property PACKAGE_PIN AK23 [get_ports fmcl_la09_p]
set_property PACKAGE_PIN AK25 [get_ports fmcl_la10_n]
set_property PACKAGE_PIN AJ24 [get_ports fmcl_la10_p]
set_property PACKAGE_PIN AF25 [get_ports fmcl_la11_n]
set_property PACKAGE_PIN AE25 [get_ports fmcl_la11_p]
set_property PACKAGE_PIN AB20 [get_ports fmcl_la12_n]
set_property PACKAGE_PIN AA20 [get_ports fmcl_la12_p]
set_property PACKAGE_PIN AC25 [get_ports fmcl_la13_n]
set_property PACKAGE_PIN AB24 [get_ports fmcl_la13_p]
set_property PACKAGE_PIN AE21 [get_ports fmcl_la14_n]
set_property PACKAGE_PIN AD21 [get_ports fmcl_la14_p]
set_property PACKAGE_PIN AD24 [get_ports fmcl_la15_n]
set_property PACKAGE_PIN AC24 [get_ports fmcl_la15_p]
set_property PACKAGE_PIN AD22 [get_ports fmcl_la16_n]
set_property PACKAGE_PIN AC22 [get_ports fmcl_la16_p]
set_property PACKAGE_PIN AC27 [get_ports fmcl_la17_n]
set_property PACKAGE_PIN AB27 [get_ports fmcl_la17_p]
set_property PACKAGE_PIN AD28 [get_ports fmcl_la18_n]
set_property PACKAGE_PIN AD27 [get_ports fmcl_la18_p]
set_property PACKAGE_PIN AK26 [get_ports fmcl_la19_n]
set_property PACKAGE_PIN AJ26 [get_ports fmcl_la19_p]
set_property PACKAGE_PIN AF27 [get_ports fmcl_la20_n]
set_property PACKAGE_PIN AF26 [get_ports fmcl_la20_p]
set_property PACKAGE_PIN AG28 [get_ports fmcl_la21_n]
set_property PACKAGE_PIN AG27 [get_ports fmcl_la21_p]
set_property PACKAGE_PIN AK28 [get_ports fmcl_la22_n]
set_property PACKAGE_PIN AJ27 [get_ports fmcl_la22_p]
set_property PACKAGE_PIN AH27 [get_ports fmcl_la23_n]
set_property PACKAGE_PIN AH26 [get_ports fmcl_la23_p]
set_property PACKAGE_PIN AH30 [get_ports fmcl_la24_n]
set_property PACKAGE_PIN AG30 [get_ports fmcl_la24_p]
set_property PACKAGE_PIN AD26 [get_ports fmcl_la25_n]
set_property PACKAGE_PIN AC26 [get_ports fmcl_la25_p]
set_property PACKAGE_PIN AK30 [get_ports fmcl_la26_n]
set_property PACKAGE_PIN AK29 [get_ports fmcl_la26_p]
set_property PACKAGE_PIN AJ29 [get_ports fmcl_la27_n]
set_property PACKAGE_PIN AJ28 [get_ports fmcl_la27_p]
set_property PACKAGE_PIN AF30 [get_ports fmcl_la28_n]
set_property PACKAGE_PIN AE30 [get_ports fmcl_la28_p]
set_property PACKAGE_PIN AF28 [get_ports fmcl_la29_n]
set_property PACKAGE_PIN AE28 [get_ports fmcl_la29_p]
set_property PACKAGE_PIN AB30 [get_ports fmcl_la30_n]
set_property PACKAGE_PIN AB29 [get_ports fmcl_la30_p]
set_property PACKAGE_PIN AE29 [get_ports fmcl_la31_n]
set_property PACKAGE_PIN AD29 [get_ports fmcl_la31_p]
set_property PACKAGE_PIN AA30 [get_ports fmcl_la32_n]
set_property PACKAGE_PIN Y30 [get_ports fmcl_la32_p]
#set_property PACKAGE_PIN AC30 [get_ports fmcl_la33_n]
#set_property PACKAGE_PIN AC29 [get_ports fmcl_la33_p]
set_property IOSTANDARD LVCMOS25 [get_ports fmcl_*]

# System level DDR3 DCI slave banks...
set_property DCI_CASCADE {32 34} [get_iobanks 33] 

# Null Sync clock domain crossing...
#set_false_path -from [get_pins {dipsw_r_reg*/C}] -to [get_pins {vsel_reg*/D}]
## TODO Make use of Asynchronous Clocks
#set_false_path -from [get_clocks {sys0_clkp}]  -to [get_clocks {sys1_clkp}]
#set_false_path -from [get_clocks {sys0_clkp}]  -to [get_clocks {sys2_clkp}]
#set_false_path -from [get_clocks {sys1_clkp}]  -to [get_clocks {sys0_clkp}]
#set_false_path -from [get_clocks {sys1_clkp}]  -to [get_clocks {sys2_clkp}]
#set_false_path -from [get_clocks {sys2_clkp}]  -to [get_clocks {sys0_clkp}]
#set_false_path -from [get_clocks {sys2_clkp}]  -to [get_clocks {sys1_clkp}]
#set_false_path -from [get_clocks {gmiirx_clk}] -to [get_clocks {sys1_clkp}]

# Asynchronous Clock Groups...
set_clock_groups -asynchronous \
 -group [get_clocks -include_generated_clocks {sys0_clkp}]  \
 -group [get_clocks -include_generated_clocks {sys1_clkp}]  \
 -group [get_clocks -include_generated_clocks {sys2_clkp}]  \
 -group [get_clocks -include_generated_clocks {gmiirx_clk}] 

