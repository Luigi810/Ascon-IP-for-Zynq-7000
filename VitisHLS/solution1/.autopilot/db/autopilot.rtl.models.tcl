set SynModuleInfo {
  {SRCNAME u64_to_u8_array MODELNAME u64_to_u8_array RTLNAME axi_encrypt_u64_to_u8_array}
  {SRCNAME u64_to_u8_array.clone MODELNAME u64_to_u8_array_clone RTLNAME axi_encrypt_u64_to_u8_array_clone
    SUBMODULES {
      {MODELNAME axi_encrypt_sparsemux_19_4_8_1_1 RTLNAME axi_encrypt_sparsemux_19_4_8_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME LOADBYTES MODELNAME LOADBYTES RTLNAME axi_encrypt_LOADBYTES
    SUBMODULES {
      {MODELNAME axi_encrypt_sparsemux_33_4_8_1_1 RTLNAME axi_encrypt_sparsemux_33_4_8_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME axi_encrypt_flow_control_loop_pipe_sequential_init RTLNAME axi_encrypt_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME axi_encrypt_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME ROUND.6 MODELNAME ROUND_6 RTLNAME axi_encrypt_ROUND_6}
  {SRCNAME crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1 MODELNAME crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1 RTLNAME axi_encrypt_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_1}
  {SRCNAME crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11 MODELNAME crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11 RTLNAME axi_encrypt_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_11}
  {SRCNAME crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12 MODELNAME crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12 RTLNAME axi_encrypt_crypto_aead_encrypt_Pipeline_VITIS_LOOP_29_12}
  {SRCNAME crypto_aead_encrypt MODELNAME crypto_aead_encrypt RTLNAME axi_encrypt_crypto_aead_encrypt}
  {SRCNAME axi_encrypt MODELNAME axi_encrypt RTLNAME axi_encrypt IS_TOP 1
    SUBMODULES {
      {MODELNAME axi_encrypt_c_u8_RAM_AUTO_0R0W RTLNAME axi_encrypt_c_u8_RAM_AUTO_0R0W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME axi_encrypt_gmem_m_axi RTLNAME axi_encrypt_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME axi_encrypt_control_s_axi RTLNAME axi_encrypt_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
