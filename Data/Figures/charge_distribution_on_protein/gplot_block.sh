#!/bin/bash


gnuplot << eof
set style line 1 lc rgb "grey30" ps 0 lt 1 lw 2
set style line 2 lc rgb "grey70" lt 1 lw 2
set style fill solid 1.0 border rgb "grey30"
set border 3
set xtic nomirror scale 0
set ytic nomirror out scale 0.75 0.5
set yr [-1.5:2.2]
set terminal postscript enhanced mono dashed lw 1 "Helvetica" 14
set output "ave_chg_loop$1.ps"
plot 'ave_chg_loop$1.dat' u 0:2:3 w yerrorbars ls 1 notitle, '' u 0:2:(0.7):xtic(1) w boxes ls 2 notitle
eof

gs -sDEVICE=jpeg -dJPEGQ=100 -dNOPAUSE -dBATCH -dSAFER -r300 -sOutputFile=ave_chg_loop$1.jpg ave_chg_loop$1.ps
