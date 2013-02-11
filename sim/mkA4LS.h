/*
 * Generated by Bluespec Compiler, version 2013.01.beta5 (build 30325, 2013-01-23)
 * 
 * On Mon Feb 11 09:29:54 EST 2013
 * 
 */

/* Generation options: keep-fires */
#ifndef __mkA4LS_h__
#define __mkA4LS_h__

#include "bluesim_types.h"
#include "bs_module.h"
#include "bluesim_primitives.h"
#include "bs_vcd.h"


/* Class declaration for the mkA4LS module */
class MOD_mkA4LS : public Module {
 
 /* Clock handles */
 private:
  tClock __clk_handle_0;
 
 /* Clock gate handles */
 public:
  tUInt8 *clk_gate[0];
 
 /* Instantiation parameters */
 public:
  tUInt8 const PARAM_hasDebugLogic;
 
 /* Module state */
 public:
  MOD_Wire<tUInt64> INST_a4l_a4rdAddr_data_wire;
  MOD_Wire<tUInt8> INST_a4l_a4rdAddr_enq_enq;
  MOD_Wire<tUInt8> INST_a4l_a4rdAddr_enq_valid;
  MOD_Fifo<tUInt64> INST_a4l_a4rdAddr_fifof;
  MOD_Wire<tUInt8> INST_a4l_a4rdResp_deq_deq;
  MOD_Wire<tUInt8> INST_a4l_a4rdResp_deq_ready;
  MOD_Reg<tUInt8> INST_a4l_a4rdResp_fifof_cntr_r;
  MOD_Wire<tUInt8> INST_a4l_a4rdResp_fifof_dequeueing;
  MOD_Wire<tUInt8> INST_a4l_a4rdResp_fifof_enqueueing;
  MOD_Reg<tUInt64> INST_a4l_a4rdResp_fifof_q_0;
  MOD_Reg<tUInt64> INST_a4l_a4rdResp_fifof_q_1;
  MOD_Wire<tUInt64> INST_a4l_a4rdResp_fifof_x_wire;
  MOD_Wire<tUInt64> INST_a4l_a4wrAddr_data_wire;
  MOD_Wire<tUInt8> INST_a4l_a4wrAddr_enq_enq;
  MOD_Wire<tUInt8> INST_a4l_a4wrAddr_enq_valid;
  MOD_Fifo<tUInt64> INST_a4l_a4wrAddr_fifof;
  MOD_Wire<tUInt64> INST_a4l_a4wrData_data_wire;
  MOD_Wire<tUInt8> INST_a4l_a4wrData_enq_enq;
  MOD_Wire<tUInt8> INST_a4l_a4wrData_enq_valid;
  MOD_Fifo<tUInt64> INST_a4l_a4wrData_fifof;
  MOD_Wire<tUInt8> INST_a4l_a4wrResp_deq_deq;
  MOD_Wire<tUInt8> INST_a4l_a4wrResp_deq_ready;
  MOD_Reg<tUInt8> INST_a4l_a4wrResp_fifof_cntr_r;
  MOD_Wire<tUInt8> INST_a4l_a4wrResp_fifof_dequeueing;
  MOD_Wire<tUInt8> INST_a4l_a4wrResp_fifof_enqueueing;
  MOD_Reg<tUInt8> INST_a4l_a4wrResp_fifof_q_0;
  MOD_Reg<tUInt8> INST_a4l_a4wrResp_fifof_q_1;
  MOD_Wire<tUInt8> INST_a4l_a4wrResp_fifof_x_wire;
  MOD_Wire<tUInt8> INST_a4ls_rdAddrVal_w;
  MOD_Wire<tUInt32> INST_a4ls_rdAddr_w;
  MOD_Wire<tUInt8> INST_a4ls_rdProt_w;
  MOD_Wire<tUInt8> INST_a4ls_rdRespRdy_w;
  MOD_Wire<tUInt8> INST_a4ls_wrAddrVal_w;
  MOD_Wire<tUInt32> INST_a4ls_wrAddr_w;
  MOD_Wire<tUInt8> INST_a4ls_wrDataVal_w;
  MOD_Wire<tUInt32> INST_a4ls_wrData_w;
  MOD_Wire<tUInt8> INST_a4ls_wrProt_w;
  MOD_Wire<tUInt8> INST_a4ls_wrRespRdy_w;
  MOD_Wire<tUInt8> INST_a4ls_wrStrb_w;
  MOD_Reg<tUInt8> INST_b18;
  MOD_Reg<tUInt8> INST_b19;
  MOD_Reg<tUInt8> INST_b1A;
  MOD_Reg<tUInt8> INST_b1B;
  MOD_Reg<tUInt32> INST_lastReadAddr;
  MOD_Reg<tUInt32> INST_lastWriteAddr;
  MOD_Reg<tUInt32> INST_r0;
  MOD_Reg<tUInt32> INST_r4;
 
 /* Constructor */
 public:
  MOD_mkA4LS(tSimStateHdl simHdl, char const *name, Module *parent, tUInt8 ARG_hasDebugLogic);
 
 /* Symbol init methods */
 private:
  void init_symbols_0();
 
 /* Reset signal definitions */
 private:
  tUInt8 PORT_ARESETN;
 
 /* Port definitions */
 public:
  tUInt8 PORT_AWVALID;
  tUInt8 PORT_WVALID;
  tUInt8 PORT_BREADY;
  tUInt8 PORT_ARVALID;
  tUInt8 PORT_RREADY;
  tUInt32 PORT_AWADDR;
  tUInt8 PORT_AWPROT;
  tUInt32 PORT_WDATA;
  tUInt8 PORT_WSTRB;
  tUInt32 PORT_ARADDR;
  tUInt8 PORT_ARPROT;
  tUInt8 PORT_AWREADY;
  tUInt8 PORT_WREADY;
  tUInt8 PORT_BVALID;
  tUInt8 PORT_BRESP;
  tUInt8 PORT_ARREADY;
  tUInt8 PORT_RVALID;
  tUInt32 PORT_RDATA;
  tUInt8 PORT_RRESP;
  tUInt8 PORT_RDY_mAWVALID;
  tUInt8 PORT_RDY_sAWREADY;
  tUInt8 PORT_RDY_mAWADDR;
  tUInt8 PORT_RDY_mAWPROT;
  tUInt8 PORT_RDY_mWVALID;
  tUInt8 PORT_RDY_sWREADY;
  tUInt8 PORT_RDY_mWDATA;
  tUInt8 PORT_RDY_mWSTRB;
  tUInt8 PORT_RDY_sBVALID;
  tUInt8 PORT_RDY_mBREADY;
  tUInt8 PORT_RDY_sBRESP;
  tUInt8 PORT_RDY_mARVALID;
  tUInt8 PORT_RDY_sARREADY;
  tUInt8 PORT_RDY_mARADDR;
  tUInt8 PORT_RDY_mARPROT;
  tUInt8 PORT_RDY_sRVALID;
  tUInt8 PORT_RDY_mRREADY;
  tUInt8 PORT_RDY_sRDATA;
  tUInt8 PORT_RDY_sRRESP;
 
 /* Publicly accessible definitions */
 public:
  tUInt8 DEF_WILL_FIRE_mRREADY;
  tUInt8 DEF_WILL_FIRE_mARPROT;
  tUInt8 DEF_WILL_FIRE_mARADDR;
  tUInt8 DEF_WILL_FIRE_mARVALID;
  tUInt8 DEF_WILL_FIRE_mBREADY;
  tUInt8 DEF_WILL_FIRE_mWSTRB;
  tUInt8 DEF_WILL_FIRE_mWDATA;
  tUInt8 DEF_WILL_FIRE_mWVALID;
  tUInt8 DEF_WILL_FIRE_mAWPROT;
  tUInt8 DEF_WILL_FIRE_mAWADDR;
  tUInt8 DEF_WILL_FIRE_mAWVALID;
  tUInt8 DEF_WILL_FIRE_RL_a4ls_doAlways;
  tUInt8 DEF_CAN_FIRE_RL_a4ls_doAlways;
  tUInt8 DEF_WILL_FIRE_RL_a4l_cfrd;
  tUInt8 DEF_CAN_FIRE_RL_a4l_cfrd;
  tUInt8 DEF_WILL_FIRE_RL_a4l_cfwr;
  tUInt8 DEF_CAN_FIRE_RL_a4l_cfwr;
  tUInt8 DEF_WILL_FIRE_RL_a4l_a4rdResp_do_deq;
  tUInt8 DEF_CAN_FIRE_RL_a4l_a4rdResp_do_deq;
  tUInt8 DEF_WILL_FIRE_RL_a4l_a4rdResp_fifof_both;
  tUInt8 DEF_CAN_FIRE_RL_a4l_a4rdResp_fifof_both;
  tUInt8 DEF_WILL_FIRE_RL_a4l_a4rdResp_fifof_decCtr;
  tUInt8 DEF_CAN_FIRE_RL_a4l_a4rdResp_fifof_decCtr;
  tUInt8 DEF_WILL_FIRE_RL_a4l_a4rdResp_fifof_incCtr;
  tUInt8 DEF_CAN_FIRE_RL_a4l_a4rdResp_fifof_incCtr;
  tUInt8 DEF_WILL_FIRE_RL_a4l_a4rdAddr_do_enq;
  tUInt8 DEF_CAN_FIRE_RL_a4l_a4rdAddr_do_enq;
  tUInt8 DEF_WILL_FIRE_RL_a4l_a4wrResp_do_deq;
  tUInt8 DEF_CAN_FIRE_RL_a4l_a4wrResp_do_deq;
  tUInt8 DEF_WILL_FIRE_RL_a4l_a4wrResp_fifof_both;
  tUInt8 DEF_CAN_FIRE_RL_a4l_a4wrResp_fifof_both;
  tUInt8 DEF_WILL_FIRE_RL_a4l_a4wrResp_fifof_decCtr;
  tUInt8 DEF_CAN_FIRE_RL_a4l_a4wrResp_fifof_decCtr;
  tUInt8 DEF_WILL_FIRE_RL_a4l_a4wrResp_fifof_incCtr;
  tUInt8 DEF_CAN_FIRE_RL_a4l_a4wrResp_fifof_incCtr;
  tUInt8 DEF_WILL_FIRE_RL_a4l_a4wrData_do_enq;
  tUInt8 DEF_CAN_FIRE_RL_a4l_a4wrData_do_enq;
  tUInt8 DEF_WILL_FIRE_RL_a4l_a4wrAddr_do_enq;
  tUInt8 DEF_CAN_FIRE_RL_a4l_a4wrAddr_do_enq;
  tUInt8 DEF_CAN_FIRE_sRRESP;
  tUInt8 DEF_CAN_FIRE_sRDATA;
  tUInt8 DEF_CAN_FIRE_mRREADY;
  tUInt8 DEF_CAN_FIRE_sRVALID;
  tUInt8 DEF_CAN_FIRE_mARPROT;
  tUInt8 DEF_CAN_FIRE_mARADDR;
  tUInt8 DEF_CAN_FIRE_sARREADY;
  tUInt8 DEF_CAN_FIRE_mARVALID;
  tUInt8 DEF_CAN_FIRE_sBRESP;
  tUInt8 DEF_CAN_FIRE_mBREADY;
  tUInt8 DEF_CAN_FIRE_sBVALID;
  tUInt8 DEF_CAN_FIRE_mWSTRB;
  tUInt8 DEF_CAN_FIRE_mWDATA;
  tUInt8 DEF_CAN_FIRE_sWREADY;
  tUInt8 DEF_CAN_FIRE_mWVALID;
  tUInt8 DEF_CAN_FIRE_mAWPROT;
  tUInt8 DEF_CAN_FIRE_mAWADDR;
  tUInt8 DEF_CAN_FIRE_sAWREADY;
  tUInt8 DEF_CAN_FIRE_mAWVALID;
  tUInt8 DEF_NOT_a4l_a4rdResp_fifof_cntr_r_2_EQ_2_4___d65;
  tUInt8 DEF_x__h2424;
  tUInt8 DEF_NOT_a4l_a4wrResp_fifof_cntr_r_9_EQ_2_1___d32;
  tUInt8 DEF_x__h1082;
  tUInt8 DEF_a4l_a4rdResp_fifof_cntr_r_2_EQ_0___d54;
  tUInt8 DEF_a4l_a4wrResp_fifof_cntr_r_9_EQ_0___d21;
 
 /* Local definitions */
 private:
  tUInt64 DEF_a4l_a4rdResp_fifof_q_1___d59;
  tUInt64 DEF_a4l_a4rdResp_fifof_x_wire_wget____d55;
  tUInt8 DEF_a4l_a4wrResp_fifof_q_1__h1185;
  tUInt8 DEF_a4l_a4wrResp_fifof_x_wire_wget____d22;
  tUInt64 DEF_v__h4616;
  tUInt64 DEF_v__h4584;
  tUInt64 DEF_v__h4318;
  tUInt64 DEF_a4l_a4rdResp_fifof_q_0___d165;
  tUInt8 DEF_a4l_a4rdResp_fifof_cntr_r_2_MINUS_1___d60;
  tUInt8 DEF_a4l_a4rdResp_fifof_cntr_r_2_EQ_1___d56;
  tUInt8 DEF_a4l_a4wrResp_fifof_cntr_r_9_MINUS_1___d27;
  tUInt8 DEF_a4l_a4wrResp_fifof_cntr_r_9_EQ_1___d23;
 
 /* Rules */
 public:
  void RL_a4l_a4wrAddr_do_enq();
  void RL_a4l_a4wrData_do_enq();
  void RL_a4l_a4wrResp_fifof_incCtr();
  void RL_a4l_a4wrResp_fifof_decCtr();
  void RL_a4l_a4wrResp_fifof_both();
  void RL_a4l_a4wrResp_do_deq();
  void RL_a4l_a4rdAddr_do_enq();
  void RL_a4l_a4rdResp_fifof_incCtr();
  void RL_a4l_a4rdResp_fifof_decCtr();
  void RL_a4l_a4rdResp_fifof_both();
  void RL_a4l_a4rdResp_do_deq();
  void RL_a4l_cfwr();
  void RL_a4l_cfrd();
  void RL_a4ls_doAlways();
 
 /* Methods */
 public:
  void METH_mAWVALID();
  tUInt8 METH_RDY_mAWVALID();
  tUInt8 METH_sAWREADY();
  tUInt8 METH_RDY_sAWREADY();
  void METH_mAWADDR(tUInt32 ARG_AWADDR);
  tUInt8 METH_RDY_mAWADDR();
  void METH_mAWPROT(tUInt8 ARG_AWPROT);
  tUInt8 METH_RDY_mAWPROT();
  void METH_mWVALID();
  tUInt8 METH_RDY_mWVALID();
  tUInt8 METH_sWREADY();
  tUInt8 METH_RDY_sWREADY();
  void METH_mWDATA(tUInt32 ARG_WDATA);
  tUInt8 METH_RDY_mWDATA();
  void METH_mWSTRB(tUInt8 ARG_WSTRB);
  tUInt8 METH_RDY_mWSTRB();
  tUInt8 METH_sBVALID();
  tUInt8 METH_RDY_sBVALID();
  void METH_mBREADY();
  tUInt8 METH_RDY_mBREADY();
  tUInt8 METH_sBRESP();
  tUInt8 METH_RDY_sBRESP();
  void METH_mARVALID();
  tUInt8 METH_RDY_mARVALID();
  tUInt8 METH_sARREADY();
  tUInt8 METH_RDY_sARREADY();
  void METH_mARADDR(tUInt32 ARG_ARADDR);
  tUInt8 METH_RDY_mARADDR();
  void METH_mARPROT(tUInt8 ARG_ARPROT);
  tUInt8 METH_RDY_mARPROT();
  tUInt8 METH_sRVALID();
  tUInt8 METH_RDY_sRVALID();
  void METH_mRREADY();
  tUInt8 METH_RDY_mRREADY();
  tUInt32 METH_sRDATA();
  tUInt8 METH_RDY_sRDATA();
  tUInt8 METH_sRRESP();
  tUInt8 METH_RDY_sRRESP();
 
 /* Reset routines */
 public:
  void reset_ARESETN(tUInt8 ARG_rst_in);
 
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
  void dump_VCD(tVCDDumpType dt, unsigned int levels, MOD_mkA4LS &backing);
  void vcd_defs(tVCDDumpType dt, MOD_mkA4LS &backing);
  void vcd_prims(tVCDDumpType dt, MOD_mkA4LS &backing);
};

#endif /* ifndef __mkA4LS_h__ */
