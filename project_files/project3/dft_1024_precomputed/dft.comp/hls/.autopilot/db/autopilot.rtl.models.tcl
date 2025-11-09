set SynModuleInfo {
  {SRCNAME dft_Pipeline_VITIS_LOOP_21_1 MODELNAME dft_Pipeline_VITIS_LOOP_21_1 RTLNAME dft_dft_Pipeline_VITIS_LOOP_21_1
    SUBMODULES {
      {MODELNAME dft_flow_control_loop_pipe_sequential_init RTLNAME dft_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dft_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3 MODELNAME dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3 RTLNAME dft_dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3
    SUBMODULES {
      {MODELNAME dft_faddfsub_32ns_32ns_32_5_full_dsp_1 RTLNAME dft_faddfsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME dft_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME dft_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME dft_mul_10s_10s_10_1_1 RTLNAME dft_mul_10s_10s_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME dft_dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3_cos_coefficients_table_ROM_AUTO_1R RTLNAME dft_dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3_cos_coefficients_table_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dft_dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3_sin_coefficients_table_ROM_AUTO_1R RTLNAME dft_dft_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_44_3_sin_coefficients_table_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dft_Pipeline_VITIS_LOOP_67_4 MODELNAME dft_Pipeline_VITIS_LOOP_67_4 RTLNAME dft_dft_Pipeline_VITIS_LOOP_67_4}
  {SRCNAME dft MODELNAME dft RTLNAME dft IS_TOP 1
    SUBMODULES {
      {MODELNAME dft_real_sample_data_RAM_AUTO_1R1W RTLNAME dft_real_sample_data_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dft_control_s_axi RTLNAME dft_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME dft_regslice_both RTLNAME dft_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
