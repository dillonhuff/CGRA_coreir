import os

verilog_dir = '/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/'

# sv_files_old = """/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/cfg_and_dbg_unq1.sv \\ """

# sv_files_old = """/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/cfg_ifc_unq1.sv \\ """

# sv_files = """/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/flop_unq1.sv \\ """

# sv_files = """/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/flop_unq2.sv \\
# /Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/flop_unq3.sv \\ """

sv_files = """/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/global_controller_unq1.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/jtag_unq1.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/tap_unq1.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/template_ifc_unq1.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_cmpr.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_debug_reg.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_full_add.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_lut.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_mult_add.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_opt_reg.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_opt_reg_file.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_pe_comp_unq1.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_pe_unq1.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_shifter_unq1.sv\\ """

files_str = sv_files + verilog_dir + '*.v'

yosys_to_coreir_cmd_str = 'yosys -p "hierarchy; proc; memory -nomap; pmuxtree; to_coreir" -m /Users/dillon/CppWorkspace/VerilogToCoreIR/to_coreir.so ' + files_str

#verilog_dir + '*.sv ' + verilog_dir + '*.v'


os.system(yosys_to_coreir_cmd_str)
