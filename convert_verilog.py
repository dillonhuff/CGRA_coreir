import os

verilog_dir = '/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/'

res = os.system('cd /Users/dillon/VerilogWorkspace/CGRAGenerator/verilator/generator_z_tb; ./run.csh')

print 'Done generating design'

# assert(res == 0)

sv_files = """./global_controller_unq1.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_cmpr.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_debug_reg.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_full_add.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_lut.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_mult_add.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_opt_reg.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_opt_reg_file.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_pe_comp_unq1.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_pe_unq1.sv \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/test_shifter_unq1.sv \\\n"""

v_files = """/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/cb_unq1.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/cb_unq2.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/cb_unq3.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/fifo_control_unq1.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/global_signal_tile_unq1.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/input_sr_unq1.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/io16bit_unq1.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/io16bit_unq2.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/io16bit_unq3.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/io16bit_unq4.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/io1bit_unq1.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/io1bit_unq2.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/io1bit_unq3.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/io1bit_unq4.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/linebuffer_control_unq1.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/mem_unq1.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/memory_core_unq1.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/memory_tile_unq1.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/output_sr_unq1.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/pe_tile_new_unq1.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/sb_unq1.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/sb_unq2.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/sb_unq3.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/sram_512w_16b.v \\
/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/top.v"""

files_str = sv_files + ' ' + v_files

def remove_macro_def(macro_name, fstr):
    lines = fstr.splitlines()

    final_str = ''
    macro_len = len(macro_name)
    define_len = len('define')
    for line in lines:
        if len(line) >= (macro_len + define_len + 1) and line[0] == '`':
            print 'Found macro def = ', line
            base = 1 + define_len + 1
            print line[base : base + macro_len]

            if line[base : base + macro_len] == macro_name:
                final_str += line[0 : base + macro_len]
            else:
                final_str += line + '\n'
        else:
            final_str += line + '\n'

    return final_str

# Preprocess away xasserts from files
files_to_proc = ['input_sr_unq1.v', 'output_sr_unq1.v', 'memory_core_unq1.v']
for file in files_to_proc:
    file_name = verilog_dir + file
    f = open(file_name, 'r')
    fstr = f.read();
    f.close()
    
    new_fstr = remove_macro_def('xassert(condition, message)', fstr)

    f = open(file_name, 'w')
    f.write(new_fstr)
    f.close()


yosys_to_coreir_cmd_str = 'yosys -p "hierarchy; proc; memory -nomap; pmuxtree; to_coreir" -m /Users/dillon/CppWorkspace/VerilogToCoreIR/to_coreir.so ' + files_str

#verilog_dir + '*.sv ' + verilog_dir + '*.v'
print 'Process command = '
print yosys_to_coreir_cmd_str

os.system(yosys_to_coreir_cmd_str)
