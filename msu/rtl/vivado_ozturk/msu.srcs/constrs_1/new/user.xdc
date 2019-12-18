
#create_clock -period 8.000 -name ap_clk -waveform {0.000 4.000} [get_ports ap_clk]
set_property USER_SLR_ASSIGNMENT SLR0 [get_cells inst_wrapper/inst_kernel/msu/modsqr/modsqr]

