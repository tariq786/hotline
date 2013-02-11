/*
 * Generated by Bluespec Compiler, version 2013.01.beta5 (build 30325, 2013-01-23)
 * 
 * On Mon Feb 11 11:45:06 EST 2013
 * 
 */

/* Generation options: keep-fires */
#ifndef __mkHCrt_TB1_h__
#define __mkHCrt_TB1_h__

#include "bluesim_types.h"
#include "bs_module.h"
#include "bluesim_primitives.h"
#include "bs_vcd.h"
#include "mkA4LS.h"
#include "mkHCrtCompleter2Axi.h"
#include "mkL2Proc.h"


/* Class declaration for the mkHCrt_TB1 module */
class MOD_mkHCrt_TB1 : public Module {
 
 /* Clock handles */
 private:
  tClock __clk_handle_0;
 
 /* Clock gate handles */
 public:
  tUInt8 *clk_gate[0];
 
 /* Instantiation parameters */
 public:
 
 /* Module state */
 public:
  MOD_Wire<tUInt8> INST_a4lm_rdAddrRdy_w;
  MOD_Wire<tUInt32> INST_a4lm_rdData_w;
  MOD_Wire<tUInt8> INST_a4lm_rdRespVal_w;
  MOD_Wire<tUInt8> INST_a4lm_rdResp_w;
  MOD_Wire<tUInt8> INST_a4lm_wrAddrRdy_w;
  MOD_Wire<tUInt8> INST_a4lm_wrDataRdy_w;
  MOD_Wire<tUInt8> INST_a4lm_wrRespVal_w;
  MOD_Wire<tUInt8> INST_a4lm_wrResp_w;
  MOD_mkA4LS INST_a4ls;
  MOD_Reg<tUInt32> INST_consumeCnt;
  MOD_mkHCrtCompleter2Axi INST_crt2axi;
  MOD_Reg<tUInt32> INST_cycleCount;
  MOD_Reg<tUInt64> INST_gpDA;
  MOD_Reg<tUInt8> INST_gpL2Hdr;
  MOD_Reg<tUInt8> INST_gpPDU;
  MOD_Reg<tUInt8> INST_gpPtr;
  MOD_Reg<tUInt64> INST_gpSA;
  MOD_Reg<tUInt8> INST_gqPtr;
  MOD_Fifo<tUInt32> INST_l2ConsumeF;
  MOD_Fifo<tUInt32> INST_l2GenF;
  MOD_mkL2Proc INST_l2P;
  MOD_Fifo<tUInt32> INST_l2qc_inF;
  MOD_Fifo<tUInt64> INST_l2qc_outF;
  MOD_Reg<tUInt8> INST_l2qc_ptr;
  MOD_Reg<tUInt32> INST_l2qc_sr;
  MOD_Fifo<tUInt32> INST_qcF;
  MOD_Fifo<tUInt64> INST_qcl2_inF;
  MOD_Fifo<tUInt32> INST_qcl2_outF;
  MOD_Reg<tUInt8> INST_qcl2_ptr;
 
 /* Constructor */
 public:
  MOD_mkHCrt_TB1(tSimStateHdl simHdl, char const *name, Module *parent);
 
 /* Symbol init methods */
 private:
  void init_symbols_0();
 
 /* Reset signal definitions */
 private:
  tUInt8 PORT_RST_N;
 
 /* Port definitions */
 public:
 
 /* Publicly accessible definitions */
 public:
  tUInt8 DEF_WILL_FIRE_RL_terminate;
  tUInt8 DEF_CAN_FIRE_RL_terminate;
  tUInt8 DEF_WILL_FIRE_RL_advance_cycleCount;
  tUInt8 DEF_CAN_FIRE_RL_advance_cycleCount;
  tUInt8 DEF_WILL_FIRE_RL_doAlways;
  tUInt8 DEF_CAN_FIRE_RL_doAlways;
  tUInt8 DEF_WILL_FIRE_RL_chomp_l2;
  tUInt8 DEF_CAN_FIRE_RL_chomp_l2;
  tUInt8 DEF_WILL_FIRE_RL_mkConnectionGetPut_5;
  tUInt8 DEF_CAN_FIRE_RL_mkConnectionGetPut_5;
  tUInt8 DEF_WILL_FIRE_RL_mkConnectionGetPut_4;
  tUInt8 DEF_CAN_FIRE_RL_mkConnectionGetPut_4;
  tUInt8 DEF_WILL_FIRE_RL_mkConnectionGetPut_3;
  tUInt8 DEF_CAN_FIRE_RL_mkConnectionGetPut_3;
  tUInt8 DEF_WILL_FIRE_RL_qcl2_funnel;
  tUInt8 DEF_CAN_FIRE_RL_qcl2_funnel;
  tUInt8 DEF_WILL_FIRE_RL_mkConnectionGetPut_2;
  tUInt8 DEF_CAN_FIRE_RL_mkConnectionGetPut_2;
  tUInt8 DEF_WILL_FIRE_RL_feed_hcrt_req;
  tUInt8 DEF_CAN_FIRE_RL_feed_hcrt_req;
  tUInt8 DEF_WILL_FIRE_RL_mkConnectionGetPut_1;
  tUInt8 DEF_CAN_FIRE_RL_mkConnectionGetPut_1;
  tUInt8 DEF_WILL_FIRE_RL_l2qc_unfunnel;
  tUInt8 DEF_CAN_FIRE_RL_l2qc_unfunnel;
  tUInt8 DEF_WILL_FIRE_RL_mkConnectionGetPut;
  tUInt8 DEF_CAN_FIRE_RL_mkConnectionGetPut;
  tUInt8 DEF_WILL_FIRE_RL_l2_gen_payload;
  tUInt8 DEF_CAN_FIRE_RL_l2_gen_payload;
  tUInt8 DEF_WILL_FIRE_RL_l2_gen_header;
  tUInt8 DEF_CAN_FIRE_RL_l2_gen_header;
  tUInt8 DEF_WILL_FIRE_RL_a4lm_doAlways;
  tUInt8 DEF_CAN_FIRE_RL_a4lm_doAlways;
  tUInt8 DEF_l2qc_inF_first__74_BITS_9_TO_8___d175;
  tUInt8 DEF_b__h9394;
  tUInt32 DEF_b__h16272;
  tUInt32 DEF_l2qc_inF_first____d174;
  tUInt8 DEF_b__h7397;
  tUInt8 DEF_gpPtr__h2001;
  tUInt8 DEF_gpPtr_6_EQ_0___d27;
  tUInt8 DEF_gpPtr_6_EQ_13___d28;
  tUInt8 DEF_l2qc_inF_first__74_BITS_9_TO_8_75_EQ_0___d176;
  tUInt8 DEF_gqPtr_03_EQ_11___d125;
  tUInt8 DEF_gpPtr_6_EQ_14___d55;
  tUInt8 DEF_l2qc_ptr_71_EQ_3___d172;
 
 /* Local definitions */
 private:
  tUInt64 DEF_v__h16294;
 
 /* Rules */
 public:
  void RL_a4lm_doAlways();
  void RL_l2_gen_header();
  void RL_l2_gen_payload();
  void RL_mkConnectionGetPut();
  void RL_l2qc_unfunnel();
  void RL_mkConnectionGetPut_1();
  void RL_feed_hcrt_req();
  void RL_mkConnectionGetPut_2();
  void RL_qcl2_funnel();
  void RL_mkConnectionGetPut_3();
  void RL_mkConnectionGetPut_4();
  void RL_mkConnectionGetPut_5();
  void RL_chomp_l2();
  void RL_doAlways();
  void RL_advance_cycleCount();
  void RL_terminate();
 
 /* Methods */
 public:
 
 /* Reset routines */
 public:
  void reset_RST_N(tUInt8 ARG_rst_in);
 
 /* Static handles to reset routines */
 public:
 
 /* Pointers to reset fns in parent module for asserting output resets */
 private:
 
 /* Functions for the parent module to register its reset fns */
 public:
 
 /* Functions to set the elaborated clock id */
 public:
  void set_clk_0(char const *s);
 
 /* State dumping routine */
 public:
  void dump_state(unsigned int indent);
 
 /* VCD dumping routines */
 public:
  unsigned int dump_VCD_defs(unsigned int levels);
  void dump_VCD(tVCDDumpType dt, unsigned int levels, MOD_mkHCrt_TB1 &backing);
  void vcd_defs(tVCDDumpType dt, MOD_mkHCrt_TB1 &backing);
  void vcd_prims(tVCDDumpType dt, MOD_mkHCrt_TB1 &backing);
  void vcd_submodules(tVCDDumpType dt, unsigned int levels, MOD_mkHCrt_TB1 &backing);
};

#endif /* ifndef __mkHCrt_TB1_h__ */
