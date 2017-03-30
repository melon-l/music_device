vlib work

vlog -timescale 1ns/1ns vga_data.v

vsim vga_data
 
log {/*}
add wave {/*}



force {clk} 0 , 1 5 -repeat 10
force {reset} 0
force {note[3:0]} 2#0001 
force {octave[1:0]} 2#00
force {x[7:0]} 2#00000000 
force {y[6:0]} 2#0000000 

run 3000ns


force {reset} 0

run 3000ns

