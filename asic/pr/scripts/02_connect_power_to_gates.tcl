#------------------------------------------------------------------------------
# (#02) CONNECT POWER
#------------------------------------------------------------------------------
# Do not modify this file.
#------------------------------------------------------------------------------
source scripts/_00_common_settings.tcl

# Connecting power lines to the gates.
# The netlist from the synthesis does not include power connection to the
# gates. We specify which power nets should be connected to given cell pins.

# TODO: Connect the VDD pins of all the instances to the VDD net and
# the VSS pins of all the instances to the VSS net.
# Menu: Power -> Connect Global Nets
# Function: connect_global_net
delete_global_net_connections
connect_global_net VDD -type pg_pin -pin_base_name VDD -inst_base_name * -override -verbose
connect_global_net VSS -type pg_pin -pin_base_name VDD -inst_base_name * -override -verbose
