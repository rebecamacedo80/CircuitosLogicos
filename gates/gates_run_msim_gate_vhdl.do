transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {gates.vho}

vcom -93 -work work {D:/CIRCUITOS/gates/testbench/testbench_gates.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=gates_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_gates

add wave *
view structure
view signals
run -all
