transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Italo/Desktop/Proj Final/mux2.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Proj Final/cla4.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Proj Final/cla16.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Proj Final/flop.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Proj Final/fulladder.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Proj Final/inv.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Proj Final/soma_sub.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Proj Final/vuaparalela.vhd}
vcom -93 -work work {C:/Users/Italo/Desktop/Proj Final/vuaparalela_16bits.vhd}

vcom -93 -work work {C:/Users/Italo/Desktop/Proj Final/testbench/testbench_soma_sub.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L cycloneii -L rtl_work -L work -voptargs="+acc" testbench_soma_sub

add wave *
view structure
view signals
run -all
