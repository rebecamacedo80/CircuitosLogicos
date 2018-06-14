transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {cla16.vho}

vcom -93 -work work {E:/CIRCUITOS/tenaytafdafdradvybfporra/testbench/testbench_cla16.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=cla16_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" testbench_cla16

add wave *
view structure
view signals
run -all
