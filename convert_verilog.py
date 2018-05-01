import os

from yosys_utils import remove_triple_equals, remove_macro_def

#verilator_dir = '/Users/dillon/VerilogWorkspace/CGRAGenerator/verilator/generator_z_tb'
#verilog_dir = '/Users/dillon/VerilogWorkspace/CGRAGenerator/hardware/generator_z/top/genesis_verif/'

verilog_dir = '/Users/dillon/VerilogWorkspace/CGRA_verilog_mirror/'

to_coreir_dir = '/Users/dillon/CppWorkspace/VerilogToCoreIR/'

#res = os.system('cd {}; ./run.csh'.format(verilator_dir))

print 'Done generating design'

sv_files = """./global_controller_unq1.sv \\
./test_lut.sv \\
mdll_top.sv \\
{0}test_cmpr.sv \\
{0}test_debug_reg.sv \\
{0}test_full_add.sv \\
{0}test_mult_add.sv \\
{0}test_opt_reg.sv \\
{0}test_opt_reg_file.sv \\
{0}test_pe_comp_unq1.sv \\
{0}test_pe_unq1.sv \\
{0}test_shifter_unq1.sv \\\n""".format(verilog_dir)

v_files = """{0}cb_unq1.v \\
{0}cb_unq2.v \\
{0}fifo_control_unq1.v \\
{0}global_signal_tile_unq1.v \\
{0}input_sr_unq1.v \\
{0}io16bit_unq1.v \\
{0}io16bit_unq2.v \\
{0}io16bit_unq3.v \\
{0}io16bit_unq4.v \\
{0}io1bit_unq1.v \\
{0}io1bit_unq2.v \\
{0}io1bit_unq3.v \\
{0}io1bit_unq4.v \\
{0}linebuffer_control_unq1.v \\
{0}mem_unq1.v \\
{0}memory_core_unq1.v \\
{0}memory_tile_unq1.v \\
{0}output_sr_unq1.v \\
{0}pe_tile_new_unq1.sv \\
{0}sb_unq1.v \\
{0}sb_unq2.v \\
{0}sb_unq3.v \\
{0}sram_512w_16b.v \\
{0}top.v""".format(verilog_dir)

files_str = sv_files + ' ' + v_files

memory_tile_files_str = """{0}input_sr_unq1.v \\
{0}linebuffer_control_unq1.v \\
{0}fifo_control_unq1.v \\
{0}mem_unq1.v \\
{0}memory_core_unq1.v \\
{0}memory_tile_unq1.v \\
{0}output_sr_unq1.v \\
{0}pe_tile_new_unq1.sv \\
{0}sb_unq1.v \\
{0}sb_unq2.v \\
{0}sb_unq3.v \\
{0}sram_512w_16b.v \\""".format(verilog_dir)

# Preprocess away xasserts from files
files_to_proc = ['input_sr_unq1.v', 'output_sr_unq1.v', 'memory_core_unq1.v', 'test_debug_reg.sv']
for file in files_to_proc:
    file_name = verilog_dir + file
    f = open(file_name, 'r')
    fstr = f.read();
    f.close()
    
    new_fstr = remove_macro_def('xassert(condition, message)', fstr)
    new_fstr = remove_triple_equals(new_fstr)

    f = open(file_name, 'w')
    f.write(new_fstr)
    f.close()


print 'Creating memory tile'
yosys_to_coreir_cmd_str = 'yosys -p "hierarchy; proc; memory -nomap; pmuxtree; to_coreir" -m {}to_coreir.so '.format(to_coreir_dir) + memory_tile_files_str

os.system(yosys_to_coreir_cmd_str)

print 'Created memory tile'

assert(False)

yosys_to_coreir_cmd_str = 'yosys -p "hierarchy; proc; memory -nomap; pmuxtree; to_coreir" -m {}to_coreir.so '.format(to_coreir_dir) + files_str

#verilog_dir + '*.sv ' + verilog_dir + '*.v'
print 'Process command = '
print yosys_to_coreir_cmd_str

os.system(yosys_to_coreir_cmd_str)
