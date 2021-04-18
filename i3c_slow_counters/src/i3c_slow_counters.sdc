set_units -time ns
set clk_period_scl 20
set clk_period_slow 50
create_clock [get_ports clk_SCL_n]  -name core_clock_1  -period ${clk_period_scl}
set input_delay_value [expr ${clk_period_scl} * 0.4]
set output_delay_value [expr ${clk_period_scl} * 0.6]
create_clock [get_ports clk_SCL]  -name core_clock_2  -period ${clk_period_scl}
set input_delay_value [expr ${clk_period_scl} * 0.4]
set output_delay_value [expr ${clk_period_scl} * 0.6]
create_clock [get_ports CLK_SLOW]  -name slow_clock  -period ${clk_period_slow}
set input_delay_value [expr ${clk_period_slow} * 0.4]
set output_delay_value [expr ${clk_period_slow} * 0.6]

