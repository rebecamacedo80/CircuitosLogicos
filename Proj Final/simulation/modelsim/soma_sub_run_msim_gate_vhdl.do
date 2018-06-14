transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {soma_sub.vho}

vcom -93 -work work {C:/Users/Italo/Desktop/Proj Final/testbench/testbench_soma_sub.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=soma_sub_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_soma_sub

add wave *
view structure
view signals
run -all
