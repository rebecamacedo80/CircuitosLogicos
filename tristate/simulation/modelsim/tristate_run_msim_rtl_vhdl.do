transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/aluno/Desktop/circuitos/tristate/tristate/tristate.vhd}

vcom -93 -work work {C:/Users/aluno/Desktop/circuitos/tristate/tristate/testbench/testbench_tristate.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" testbench_tristate

add wave *
view structure
view signals
run -all
