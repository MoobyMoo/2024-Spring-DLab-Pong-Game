# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
<<<<<<< HEAD
  variable script "C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.runs/synth_1/Pong.tcl"
=======
  variable script "C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.runs/synth_1/Pong.tcl"
>>>>>>> 97cb86f7ce14f87d149c66f1393594ce8a2e6322
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "synth_1" START { ROLLUP_AUTO }
<<<<<<< HEAD
set_param checkpoint.writeSynthRtdsInDcp 1
set_param synth.incrementalSynthesisCache C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/.Xil/Vivado-3220-Moo_Laptop/incrSyn
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
=======
>>>>>>> 97cb86f7ce14f87d149c66f1393594ce8a2e6322
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7a100tcsg324-3

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
<<<<<<< HEAD
set_property webtalk.parent_dir C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.cache/wt [current_project]
set_property parent.project_path C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.cache/ip [current_project]
=======
set_property webtalk.parent_dir C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.cache/wt [current_project]
set_property parent.project_path C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.cache/ip [current_project]
>>>>>>> 97cb86f7ce14f87d149c66f1393594ce8a2e6322
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_verilog -library xil_defaultlib {
<<<<<<< HEAD
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Draw.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Draw_Face.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Draw_Game.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Draw_Mode.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Draw_Over.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Draw_Start.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Pong_Ball_Control.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Pong_FSM.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Pong_Paddle_Control.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Score_Display.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Signal_Control.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/VGA_Sync_Porch.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/VGA_Sync_Pulse_Generator.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/VGA_Sync_to_Count.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/button_debouncer.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/clock_divider.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/score_to_ssd.v
  C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Pong.v
=======
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Draw.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Draw_Face.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Draw_Game.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Draw_Mode.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Draw_Over.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Draw_Start.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Pong_Ball_Control.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Pong_FSM.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Pong_Paddle_Control.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Score_Display.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Signal_Control.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/VGA_Sync_Porch.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/VGA_Sync_Pulse_Generator.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/VGA_Sync_to_Count.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/button_debouncer.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/clock_divider.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/score_to_ssd.v
  C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/sources_1/new/Pong.v
>>>>>>> 97cb86f7ce14f87d149c66f1393594ce8a2e6322
}
OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
<<<<<<< HEAD
read_xdc C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/constrs_1/new/pong.xdc
set_property used_in_implementation false [get_files C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/constrs_1/new/pong.xdc]

set_param ips.enableIPCacheLiteLoad 1

read_checkpoint -auto_incremental -incremental C:/Users/asian/Desktop/School/D_lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/utils_1/imports/synth_1/Pong.dcp
=======
read_xdc C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/constrs_1/new/pong.xdc
set_property used_in_implementation false [get_files C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/constrs_1/new/pong.xdc]

set_param ips.enableIPCacheLiteLoad 1

read_checkpoint -auto_incremental -incremental C:/Users/Chien/College/Logic_Design_Lab/2024-Spring-DLab-Pong-Game/Pong/Pong.srcs/utils_1/imports/synth_1/Pong.dcp
>>>>>>> 97cb86f7ce14f87d149c66f1393594ce8a2e6322
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top Pong -part xc7a100tcsg324-3
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Pong.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Pong_utilization_synth.rpt -pb Pong_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
