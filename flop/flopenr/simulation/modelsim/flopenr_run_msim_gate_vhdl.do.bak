transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {flopenr.vho}

vcom -93 -work work {D:/CIRCUITOS/flopenr/testbench/testbench_flopenr.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=flopenr_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_flopenr

add wave *
view structure
view signals
run -all
