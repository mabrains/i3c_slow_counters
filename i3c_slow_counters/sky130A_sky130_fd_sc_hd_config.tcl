# SCL Configs
# set ::env(CLOCK_PERIOD) "15.0"
set ::env(SYNTH_MAX_FANOUT) "5"
set ::env(FP_CORE_UTIL) "40"
set ::env(PL_TARGET_DENSITY) "[ expr ($::env(FP_CORE_UTIL)+5) / 100.0 ]"
set ::env(BASE_SDC_FILE) "/openLANE_flow/designs/i3c_slow_counters/src/i3c_slow_counters.sdc"
set ::env(LEC_ENABLE) "1"
set ::env(SPEF_WIRE_MODEL) "Pi"
set ::env(SYNTH_FLAT_TOP) "1"
#set ::env(PL_BASIC_PLACEMENT) 1
