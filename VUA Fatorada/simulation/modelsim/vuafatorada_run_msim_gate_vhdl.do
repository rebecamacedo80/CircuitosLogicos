transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {vuafatorada.vho}

vcom -93 -work work {C:/Users/aluno/Desktop/CL-master/VUA Fatorada/testbench/testbench_vuafatorada.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=vuafatorada_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_vuafatorada

add wave *
view structure
view signals
run -all
