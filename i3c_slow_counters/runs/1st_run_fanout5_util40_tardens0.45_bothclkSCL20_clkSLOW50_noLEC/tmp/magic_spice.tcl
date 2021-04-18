
if { [info exist ::env(MAGIC_EXT_USE_GDS)] && $::env(MAGIC_EXT_USE_GDS) } {
	gds read $::env(CURRENT_GDS)
} else {
	lef read /home/ubuntu/openlane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd.tlef
	if {  [info exist ::env(EXTRA_LEFS)] } {
		set lefs_in $::env(EXTRA_LEFS)
		foreach lef_file $lefs_in {
			lef read $lef_file
		}
	}
	def read /openLANE_flow/designs/i3c_slow_counters/runs/1st_run_fanout5_util40_tardens0.45_bothclkSCL20_clkSLOW50_noLEC/results/routing/i3c_slow_counters.def
}
load i3c_slow_counters -dereference
cd /openLANE_flow/designs/i3c_slow_counters/runs/1st_run_fanout5_util40_tardens0.45_bothclkSCL20_clkSLOW50_noLEC/results/magic/
extract do local
extract no capacitance
extract no coupling
extract no resistance
extract no adjust
if { ! 0 } {
	extract unique
}
# extract warn all
extract

ext2spice lvs
ext2spice -o /openLANE_flow/designs/i3c_slow_counters/runs/1st_run_fanout5_util40_tardens0.45_bothclkSCL20_clkSLOW50_noLEC/results/magic/i3c_slow_counters.spice i3c_slow_counters.ext
feedback save /openLANE_flow/designs/i3c_slow_counters/runs/1st_run_fanout5_util40_tardens0.45_bothclkSCL20_clkSLOW50_noLEC/logs/magic/37-magic_ext2spice.feedback.txt
# exec cp i3c_slow_counters.spice /openLANE_flow/designs/i3c_slow_counters/runs/1st_run_fanout5_util40_tardens0.45_bothclkSCL20_clkSLOW50_noLEC/results/magic/i3c_slow_counters.spice

