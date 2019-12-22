#add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] [get_cells [list {WRAPPER_INST/CL/vdf_1/inst/inst_wrapper/inst_kernel/msu/modsqr/modsqr}]]
set_property CLOCK_DEDICATED_ROUTE ANY_CMT_COLUMN [get_nets WRAPPER_INST/SH/kernel_clks_i/clkwiz_kernel_clk0/inst/CLK_CORE_DRP_I/clk_inst/clk_out1]
create_pblock SLR0
add_cells_to_pblock [get_pblocks SLR0] [get_cells -quiet [list inst_wrapper/inst_kernel/msu]]
resize_pblock [get_pblocks SLR0] -add {CLOCKREGION_X0Y5:CLOCKREGION_X5Y9}