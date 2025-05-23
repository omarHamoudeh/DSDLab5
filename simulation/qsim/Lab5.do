onerror {exit -code 1}
vlib work
vlog -work work Lab5.vo
vlog -work work testWaveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.game_vlg_vec_tst -voptargs="+acc"
vcd file -direction Lab5.msim.vcd
vcd add -internal game_vlg_vec_tst/*
vcd add -internal game_vlg_vec_tst/i1/*
run -all
quit -f
