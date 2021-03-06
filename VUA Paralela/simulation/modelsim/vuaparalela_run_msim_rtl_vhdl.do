transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/aluno/Desktop/CL-master/VUA Paralela/vuaparalela.vhd}

vcom -93 -work work {C:/Users/aluno/Desktop/CL-master/VUA Paralela/testbench/testbench_vuaparalela.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" testbench_vuaparalela

add wave *
view structure
view signals
run -all
