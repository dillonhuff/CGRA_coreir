import os

verilog_dir = '/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/'

yosys_to_coreir_cmd_str = 'yosys -p "hierarchy; proc; memory -nomap; pmuxtree; to_coreir" -m /Users/dillon/CppWorkspace/VerilogToCoreIR/to_coreir.so ' + verilog_dir + '*.sv ' + verilog_dir + '*.v'


os.system(yosys_to_coreir_cmd_str)
