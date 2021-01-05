# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7vx485tffg1157-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/sync_project/project_1/project_1.cache/wt [current_project]
set_property parent.project_path E:/sync_project/project_1/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files E:/sync_project/project_1/project_1.srcs/sources_1/imports/ip/syncprotect.coe
add_files E:/sync_project/project_1/project_1.srcs/sources_1/imports/ip/walsh_table.coe
read_verilog -library xil_defaultlib {
  E:/sync_project/project_1/project_1.srcs/sources_1/imports/new/get_freq.v
  E:/sync_project/project_1/project_1.srcs/sources_1/imports/new/recv_ctrl.v
}
synth_design -top recv_ctrl -part xc7vx485tffg1157-1
write_checkpoint -noxdef recv_ctrl.dcp
catch { report_utilization -file recv_ctrl_utilization_synth.rpt -pb recv_ctrl_utilization_synth.pb }
