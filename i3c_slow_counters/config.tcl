# Design
set ::env(DESIGN_NAME) "i3c_slow_counters"

set ::env(VERILOG_FILES) [glob $::env(OPENLANE_ROOT)/designs/i3c_slow_counters/src/*.v]



# set ::env(CLOCK_PERIOD) "15.000"
set ::env(CLOCK_PORT) "CLK_SLOW clk_SCL clk_SCL_n"
set ::env(CELL_PAD) "4"

# set ::env(FP_PIN_ORDER_CFG) $::env(OPENLANE_ROOT)/designs/spm/pin_order.cfg

set filename $::env(OPENLANE_ROOT)/designs/i3c_slow_counters/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}
