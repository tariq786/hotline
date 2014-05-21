
///////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version : 3.1
//  \   \         Application : 7 Series FPGAs Transceivers Wizard
//  /   /         Filename : gig_ethernet_pcs_pma_0_gtwizard.v
// /___/   /\     
// \   \  /  \ 
//  \___\/\___\
//
//
// Module GTWIZARD (a Core Top)
// Generated by Xilinx 7 Series FPGAs Transceivers Wizard
// 
// 
// (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 


`default_nettype wire

`timescale 1ns / 1ps
`define DLY #1
(* DowngradeIPIdentifiedWarnings="yes" *)

//***************************** Entity Declaration ****************************
module gig_ethernet_pcs_pma_0_GTWIZARD #
(
    parameter EXAMPLE_SIMULATION                     =  0         // Set to 1 for simulation
)  
(
input           sysclk_in,
input           soft_reset_in,
input           dont_reset_on_data_error_in,
output          gt0_tx_fsm_reset_done_out,
output          gt0_rx_fsm_reset_done_out,
input           gt0_data_valid_in,

    //_________________________________________________________________________
    //GT0  (X1Y0)
    //____________________________CHANNEL PORTS________________________________
    //------------------------------- CPLL Ports -------------------------------
    output          gt0_cpllfbclklost_out,
    output          gt0_cplllock_out,
    input           gt0_cplllockdetclk_in,
    input           gt0_cpllreset_in,
    //------------------------ Channel - Clocking Ports ------------------------
    input           gt0_gtrefclk0_in,
    //-------------------------- Channel - DRP Ports  --------------------------
    input   [8:0]   gt0_drpaddr_in,
    input           gt0_drpclk_in,
    input   [15:0]  gt0_drpdi_in,
    output  [15:0]  gt0_drpdo_out,
    input           gt0_drpen_in,
    output          gt0_drprdy_out,
    input           gt0_drpwe_in,
    //----------------------------- Loopback Ports -----------------------------
    input   [2:0]   gt0_loopback_in,
    //---------------------------- Power-Down Ports ----------------------------
    input   [1:0]   gt0_rxpd_in,
    input   [1:0]   gt0_txpd_in,
    //------------------- RX Initialization and Reset Ports --------------------
    input           gt0_eyescanreset_in,
    input           gt0_rxuserrdy_in,
    //------------------------ RX Margin Analysis Ports ------------------------
    output          gt0_eyescandataerror_out,
    input           gt0_eyescantrigger_in,
    //----------------------- Receive Ports - CDR Ports ------------------------
    input           gt0_rxcdrhold_in,
    //---------------- Receive Ports - FPGA RX Interface Ports -----------------
    input           gt0_rxusrclk_in,
    input           gt0_rxusrclk2_in,
    //---------------- Receive Ports - FPGA RX interface Ports -----------------
    output  [15:0]  gt0_rxdata_out,
    //----------------- Receive Ports - Pattern Checker Ports ------------------
    output          gt0_rxprbserr_out,
    input   [2:0]   gt0_rxprbssel_in,
    //----------------- Receive Ports - Pattern Checker ports ------------------
    input           gt0_rxprbscntreset_in,
    //---------------- Receive Ports - RX 8B/10B Decoder Ports -----------------
    output  [1:0]   gt0_rxdisperr_out,
    output  [1:0]   gt0_rxnotintable_out,
    //------------------------- Receive Ports - RX AFE -------------------------
    input           gt0_gtxrxp_in,
    //---------------------- Receive Ports - RX AFE Ports ----------------------
    input           gt0_gtxrxn_in,
    //----------------- Receive Ports - RX Buffer Bypass Ports -----------------
    input           gt0_rxbufreset_in,
    output  [2:0]   gt0_rxbufstatus_out,
    //------------ Receive Ports - RX Byte and Word Alignment Ports ------------
    output          gt0_rxbyteisaligned_out,
    output          gt0_rxbyterealign_out,
    output          gt0_rxcommadet_out,
    input           gt0_rxmcommaalignen_in,
    input           gt0_rxpcommaalignen_in,
    //------------------- Receive Ports - RX Equalizer Ports -------------------
    input           gt0_rxdfeagcovrden_in,
    input           gt0_rxdfelpmreset_in,
    output  [6:0]   gt0_rxmonitorout_out,
    input   [1:0]   gt0_rxmonitorsel_in,
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
    output          gt0_rxoutclk_out,
    //----------- Receive Ports - RX Initialization and Reset Ports ------------
    input           gt0_gtrxreset_in,
    input           gt0_rxpmareset_in,
    //---------------- Receive Ports - RX Margin Analysis ports ----------------
    input           gt0_rxlpmen_in,
    //--------------- Receive Ports - RX Polarity Control Ports ----------------
    input           gt0_rxpolarity_in,
    //----------------- Receive Ports - RX8B/10B Decoder Ports -----------------
    output  [1:0]   gt0_rxchariscomma_out,
    output  [1:0]   gt0_rxcharisk_out,
    //------------ Receive Ports -RX Initialization and Reset Ports ------------
    output          gt0_rxresetdone_out,
    //---------------------- TX Configurable Driver Ports ----------------------
    input   [4:0]   gt0_txpostcursor_in,
    input   [4:0]   gt0_txprecursor_in,
    //------------------- TX Initialization and Reset Ports --------------------
    input           gt0_gttxreset_in,
    input           gt0_txuserrdy_in,
    //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    input   [1:0]   gt0_txchardispmode_in,
    input   [1:0]   gt0_txchardispval_in,
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
    input           gt0_txusrclk_in,
    input           gt0_txusrclk2_in,
    //------------------- Transmit Ports - PCI Express Ports -------------------
    input           gt0_txelecidle_in,
    //---------------- Transmit Ports - Pattern Generator Ports ----------------
    input           gt0_txprbsforceerr_in,
    //-------------------- Transmit Ports - TX Buffer Ports --------------------
    output  [1:0]   gt0_txbufstatus_out,
    //------------- Transmit Ports - TX Configurable Driver Ports --------------
    input   [3:0]   gt0_txdiffctrl_in,
    //---------------- Transmit Ports - TX Data Path interface -----------------
    input   [15:0]  gt0_txdata_in,
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
    output          gt0_gtxtxn_out,
    output          gt0_gtxtxp_out,
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    output          gt0_txoutclk_out,
    output          gt0_txoutclkfabric_out,
    output          gt0_txoutclkpcs_out,
    //------------------- Transmit Ports - TX Gearbox Ports --------------------
    input   [1:0]   gt0_txcharisk_in,
    //----------- Transmit Ports - TX Initialization and Reset Ports -----------
    output          gt0_txresetdone_out,
    //--------------- Transmit Ports - TX Polarity Control Ports ---------------
    input           gt0_txpolarity_in,
    //---------------- Transmit Ports - pattern Generator Ports ----------------
    input   [2:0]   gt0_txprbssel_in,

    input            gt0_txpmareset_in      ,
    input            gt0_txpcsreset_in      ,
    input            gt0_rxpcsreset_in      ,
    output           gt0_rxpmaresetdone_out ,
    output [7:0]    gt0_dmonitorout_out    ,


    //____________________________COMMON PORTS________________________________
    input      gt0_qplloutclk_in,
    input      gt0_qplloutrefclk_in
);

//-----------------------GTX Multi-GT Wrapper Instatiation--------------------
    gig_ethernet_pcs_pma_0_GTWIZARD_init #
    (
        .EXAMPLE_SIM_GTRESET_SPEEDUP    ("TRUE"),
        .EXAMPLE_SIMULATION             (EXAMPLE_SIMULATION),
        .STABLE_CLOCK_PERIOD            (5),
        .EXAMPLE_USE_CHIPSCOPE          (0)
    )
    inst
    (
     .sysclk_in(sysclk_in),
     .soft_reset_in(soft_reset_in),
     .dont_reset_on_data_error_in(dont_reset_on_data_error_in),
     .gt0_tx_fsm_reset_done_out(gt0_tx_fsm_reset_done_out),
     .gt0_rx_fsm_reset_done_out(gt0_rx_fsm_reset_done_out),
     .gt0_data_valid_in(gt0_data_valid_in),

    //_________________________________________________________________________
    //GT0  (X1Y0)
    //____________________________CHANNEL PORTS________________________________
    //------------------------------- CPLL Ports -------------------------------
        .gt0_cpllfbclklost_out          (gt0_cpllfbclklost_out),
        .gt0_cplllock_out               (gt0_cplllock_out),
        .gt0_cplllockdetclk_in          (gt0_cplllockdetclk_in),
        .gt0_cpllreset_in               (gt0_cpllreset_in),
    //------------------------ Channel - Clocking Ports ------------------------
        .gt0_gtrefclk0_in               (gt0_gtrefclk0_in),
    //-------------------------- Channel - DRP Ports  --------------------------
        .gt0_drpaddr_in                 (gt0_drpaddr_in),
        .gt0_drpclk_in                  (gt0_drpclk_in),
        .gt0_drpdi_in                   (gt0_drpdi_in),
        .gt0_drpdo_out                  (gt0_drpdo_out),
        .gt0_drpen_in                   (gt0_drpen_in),
        .gt0_drprdy_out                 (gt0_drprdy_out),
        .gt0_drpwe_in                   (gt0_drpwe_in),
    //----------------------------- Loopback Ports -----------------------------
        .gt0_loopback_in                (gt0_loopback_in),
    //---------------------------- Power-Down Ports ----------------------------
        .gt0_rxpd_in                    (gt0_rxpd_in),
        .gt0_txpd_in                    (gt0_txpd_in),
    //------------------- RX Initialization and Reset Ports --------------------
        .gt0_eyescanreset_in            (gt0_eyescanreset_in),
        .gt0_rxuserrdy_in               (gt0_rxuserrdy_in),
    //------------------------ RX Margin Analysis Ports ------------------------
        .gt0_eyescandataerror_out       (gt0_eyescandataerror_out),
        .gt0_eyescantrigger_in          (gt0_eyescantrigger_in),
    //----------------------- Receive Ports - CDR Ports ------------------------
        .gt0_rxcdrhold_in               (gt0_rxcdrhold_in),// input wire  gt0_rxcdrhold_in
    //---------------- Receive Ports - FPGA RX Interface Ports -----------------
        .gt0_rxusrclk_in                (gt0_rxusrclk_in),
        .gt0_rxusrclk2_in               (gt0_rxusrclk2_in),
    //---------------- Receive Ports - FPGA RX interface Ports -----------------
        .gt0_rxdata_out                 (gt0_rxdata_out),
    //----------------- Receive Ports - Pattern Checker Ports ------------------
        .gt0_rxprbserr_out              (gt0_rxprbserr_out),
        .gt0_rxprbssel_in               (gt0_rxprbssel_in),
    //----------------- Receive Ports - Pattern Checker ports ------------------
        .gt0_rxprbscntreset_in          (gt0_rxprbscntreset_in),
    //---------------- Receive Ports - RX 8B/10B Decoder Ports -----------------
        .gt0_rxdisperr_out              (gt0_rxdisperr_out),
        .gt0_rxnotintable_out           (gt0_rxnotintable_out),
    //------------------------- Receive Ports - RX AFE -------------------------
        .gt0_gtxrxp_in                  (gt0_gtxrxp_in),
    //---------------------- Receive Ports - RX AFE Ports ----------------------
        .gt0_gtxrxn_in                  (gt0_gtxrxn_in),
    //----------------- Receive Ports - RX Buffer Bypass Ports -----------------
        .gt0_rxbufreset_in              (gt0_rxbufreset_in),
        .gt0_rxbufstatus_out            (gt0_rxbufstatus_out),
    //------------ Receive Ports - RX Byte and Word Alignment Ports ------------
        .gt0_rxbyteisaligned_out        (gt0_rxbyteisaligned_out),
        .gt0_rxbyterealign_out          (gt0_rxbyterealign_out),
        .gt0_rxcommadet_out             (gt0_rxcommadet_out),
        .gt0_rxmcommaalignen_in         (gt0_rxmcommaalignen_in),
        .gt0_rxpcommaalignen_in         (gt0_rxpcommaalignen_in),
    //------------------- Receive Ports - RX Equalizer Ports -------------------
        .gt0_rxdfeagcovrden_in          (gt0_rxdfeagcovrden_in),
        .gt0_rxdfelpmreset_in           (gt0_rxdfelpmreset_in),
        .gt0_rxmonitorout_out           (gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in            (gt0_rxmonitorsel_in),
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
        .gt0_rxoutclk_out               (gt0_rxoutclk_out),
    //----------- Receive Ports - RX Initialization and Reset Ports ------------
        .gt0_gtrxreset_in               (gt0_gtrxreset_in),
        .gt0_rxpmareset_in              (gt0_rxpmareset_in),
    //---------------- Receive Ports - RX Margin Analysis ports ----------------
        .gt0_rxlpmen_in                 (gt0_rxlpmen_in),
    //--------------- Receive Ports - RX Polarity Control Ports ----------------
        .gt0_rxpolarity_in              (gt0_rxpolarity_in),
    //----------------- Receive Ports - RX8B/10B Decoder Ports -----------------
        .gt0_rxchariscomma_out          (gt0_rxchariscomma_out),
        .gt0_rxcharisk_out              (gt0_rxcharisk_out),
    //------------ Receive Ports -RX Initialization and Reset Ports ------------
        .gt0_rxresetdone_out            (gt0_rxresetdone_out),
    //---------------------- TX Configurable Driver Ports ----------------------
        .gt0_txpostcursor_in            (gt0_txpostcursor_in),
        .gt0_txprecursor_in             (gt0_txprecursor_in),
    //------------------- TX Initialization and Reset Ports --------------------
        .gt0_gttxreset_in               (gt0_gttxreset_in),
        .gt0_txuserrdy_in               (gt0_txuserrdy_in),
    //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
        .gt0_txchardispmode_in          (gt0_txchardispmode_in),
        .gt0_txchardispval_in           (gt0_txchardispval_in),
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
        .gt0_txusrclk_in                (gt0_txusrclk_in),
        .gt0_txusrclk2_in               (gt0_txusrclk2_in),
    //------------------- Transmit Ports - PCI Express Ports -------------------
        .gt0_txelecidle_in              (gt0_txelecidle_in),
    //---------------- Transmit Ports - Pattern Generator Ports ----------------
        .gt0_txprbsforceerr_in          (gt0_txprbsforceerr_in),
    //-------------------- Transmit Ports - TX Buffer Ports --------------------
        .gt0_txbufstatus_out            (gt0_txbufstatus_out),
    //------------- Transmit Ports - TX Configurable Driver Ports --------------
        .gt0_txdiffctrl_in              (gt0_txdiffctrl_in),
    //---------------- Transmit Ports - TX Data Path interface -----------------
        .gt0_txdata_in                  (gt0_txdata_in),
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .gt0_gtxtxn_out                 (gt0_gtxtxn_out),
        .gt0_gtxtxp_out                 (gt0_gtxtxp_out),
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        .gt0_txoutclk_out               (gt0_txoutclk_out),
        .gt0_txoutclkfabric_out         (gt0_txoutclkfabric_out),
        .gt0_txoutclkpcs_out            (gt0_txoutclkpcs_out),
    //------------------- Transmit Ports - TX Gearbox Ports --------------------
        .gt0_txcharisk_in               (gt0_txcharisk_in),
    //----------- Transmit Ports - TX Initialization and Reset Ports -----------
        .gt0_txresetdone_out            (gt0_txresetdone_out),
    //--------------- Transmit Ports - TX Polarity Control Ports ---------------
        .gt0_txpolarity_in              (gt0_txpolarity_in),
    //---------------- Transmit Ports - pattern Generator Ports ----------------
        .gt0_txprbssel_in               (gt0_txprbssel_in),
        .gt0_txpmareset_in        (gt0_txpmareset_in     ), 
        .gt0_txpcsreset_in        (gt0_txpcsreset_in     ), 
        .gt0_rxpcsreset_in        (gt0_rxpcsreset_in     ), 
        .gt0_rxpmaresetdone_out   (gt0_rxpmaresetdone_out), 
        .gt0_dmonitorout_out      (gt0_dmonitorout_out   ), 


    //____________________________COMMON PORTS________________________________
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in)

    );
endmodule

    
