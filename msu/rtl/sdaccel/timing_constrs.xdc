#multi-cycle paths for sq_in_d and sq_out to sq_out

# CDC circuit paths
set_max_delay -from [get_pins -of_object [get_cells -hier -filter {IS_SEQUENTIAL == true && NAME =~ *modsqr*/modsq_rst_cdc2_reg* }]      -filter {IS_CLOCK == true }] -to [get_pins -of_object [get_cells -hier -filter {IS_SEQUENTIAL == true && NAME =~ *modsqr*/rst_fb_cdc1_reg* }]      -filter {DIRECTION == IN && IS_CLOCK == false}] -datapath_only 8.0 
set_max_delay -from [get_pins -of_object [get_cells -hier -filter {IS_SEQUENTIAL == true && NAME =~ *modsqr*/rst_hold_reg* }]            -filter {IS_CLOCK == true }] -to [get_pins -of_object [get_cells -hier -filter {IS_SEQUENTIAL == true && NAME =~ *modsqr*/modsq_rst_cdc1_reg* }]   -filter {DIRECTION == IN && IS_CLOCK == false}] -datapath_only 8.0 
set_max_delay -from [get_pins -of_object [get_cells -hier -filter {IS_SEQUENTIAL == true && NAME =~ *modsqr*/modsq_start_cdc2_reg* }]    -filter {IS_CLOCK == true }] -to [get_pins -of_object [get_cells -hier -filter {IS_SEQUENTIAL == true && NAME =~ *modsqr*/start_fb_cdc1_reg* }]    -filter {DIRECTION == IN && IS_CLOCK == false}] -datapath_only 8.0 
set_max_delay -from [get_pins -of_object [get_cells -hier -filter {IS_SEQUENTIAL == true && NAME =~ *modsqr*/start_hold_reg* }]          -filter {IS_CLOCK == true }] -to [get_pins -of_object [get_cells -hier -filter {IS_SEQUENTIAL == true && NAME =~ *modsqr*/modsq_start_cdc1_reg* }] -filter {DIRECTION == IN && IS_CLOCK == false}] -datapath_only 8.0 
set_max_delay -from [get_pins -of_object [get_cells -hier -filter {IS_SEQUENTIAL == true && NAME =~ *modsqr*/modsq_valid_toggle_reg* }]  -filter {IS_CLOCK == true }] -to [get_pins -of_object [get_cells -hier -filter {IS_SEQUENTIAL == true && NAME =~ *modsqr*/modsq_valid_cdc1_reg* }] -filter {DIRECTION == IN && IS_CLOCK == false}] -datapath_only 8.0 

# sq  in/out ports (max delay)
set_max_delay -from [get_pins -of_object [get_cells -hier -filter {IS_SEQUENTIAL == true && NAME =~ *modsqr*/sq_out_reg* }] -filter {IS_CLOCK == true }] -to [get_pins -of_object [get_cells -hier -filter {IS_SEQUENTIAL == true && NAME =~ *modsqr*/*sq_out_stages_reg[1]* }] -filter {DIRECTION == IN && IS_CLOCK == false}] -datapath_only 8.0
set_max_delay -from [get_pins -of_object [get_cells -hier -filter {IS_SEQUENTIAL == true && NAME =~ *modsqr*/*sq_in_stages_reg[2]* }] -filter {IS_CLOCK == true }] -to [get_pins -of_object [get_cells -hier -filter {IS_SEQUENTIAL == true && NAME =~ *modsqr*/sq_in_d1_reg* }] -filter {DIRECTION == IN && IS_CLOCK == false}] -datapath_only 8.0


