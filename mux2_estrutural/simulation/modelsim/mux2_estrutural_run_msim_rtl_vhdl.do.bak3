transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/aluno/Desktop/circuitos/mux2_estrutural/mux2_estrutural/inversor.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/circuitos/mux2_estrutural/mux2_estrutural/mux2_estrutural.vhd}
vcom -93 -work work {C:/Users/aluno/Desktop/circuitos/mux2_estrutural/mux2_estrutural/tristate.vhd}

vcom -93 -work work {C:/Users/aluno/Desktop/circuitos/mux2_estrutural/mux2_estrutural/testbench/testbench_mux2.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" testbench_mux2

add wave *
view structure
view signals
run -all
