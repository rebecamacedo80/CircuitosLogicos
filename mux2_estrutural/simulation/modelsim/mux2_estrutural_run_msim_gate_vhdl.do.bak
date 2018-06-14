transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {mux2_estrutural.vho}

vcom -93 -work work {C:/Users/aluno/Desktop/circuitos/mux2_estrutural/mux2_estrutural/testbench/testbench_mux2.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=mux2_estrutural_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_mux2

add wave *
view structure
view signals
run -all
