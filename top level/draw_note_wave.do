vlib work

vlog -timescale 1ns/1ns vga_data.v

vsim draw_note
 
log {/*}
add wave {/*}



force {clk} 0 , 1 5 -repeat 10
force {reset} 0
force {letter[143:0]} 2#000000000000000001100000000011110000000111111000001110011100001100001100001100001100001100001100001111111100001111111100001100001100001100001100
force {oct[143:0]} 2#000000000000000000001100000000001100000000001100000000001100000000001100000000001100000000001100000000001100000000001100000000001100000000000000
force {sharp[143:0]} 2#000000000000001100001100001100001100011111111110011111111110001100001100001100001100001100001100011111111110011111111110001100001100001100001100
force {x[7:0]} 2#00100000 
force {y[6:0]} 2#0100000

run 3000ns


force {reset} 1
force {ld_note} 1
run 1000000ns

