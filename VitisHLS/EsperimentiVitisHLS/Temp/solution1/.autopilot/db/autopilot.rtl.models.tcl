set SynModuleInfo {
  {SRCNAME LOADBYTES.1 MODELNAME LOADBYTES_1 RTLNAME axi_encrypt_LOADBYTES_1}
  {SRCNAME ROUND.6 MODELNAME ROUND_6 RTLNAME axi_encrypt_ROUND_6}
  {SRCNAME crypto_aead_encrypt.1 MODELNAME crypto_aead_encrypt_1 RTLNAME axi_encrypt_crypto_aead_encrypt_1}
  {SRCNAME axi_encrypt MODELNAME axi_encrypt RTLNAME axi_encrypt IS_TOP 1
    SUBMODULES {
      {MODELNAME axi_encrypt_gmem_m_axi RTLNAME axi_encrypt_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME axi_encrypt_control_s_axi RTLNAME axi_encrypt_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
