transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {mux4_estrutural2.vho}

vcom -93 -work work {E:/CIRCUITOS/mux4_estrutural2/testbench/testbench_mux4.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=mux4_estrutural2_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_mux4

add wave *
view structure
view signals
run -all
