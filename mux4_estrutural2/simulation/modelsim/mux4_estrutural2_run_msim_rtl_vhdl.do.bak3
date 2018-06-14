transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/CIRCUITOS/mux4_estrutural2/inversor.vhd}
vcom -93 -work work {E:/CIRCUITOS/mux4_estrutural2/mux2_estrutural.vhd}
vcom -93 -work work {E:/CIRCUITOS/mux4_estrutural2/mux4_estrutural.vhd}
vcom -93 -work work {E:/CIRCUITOS/mux4_estrutural2/tristate.vhd}

vcom -93 -work work {E:/CIRCUITOS/mux4_estrutural2/testbench/testbench_mux4.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" testbench_mux4

add wave *
view structure
view signals
run -all
