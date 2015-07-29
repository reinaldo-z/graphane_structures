set terminal epslatex size 17cm,10cm color colortext standalone
set terminal epslatex color colortext standalone
set xlabel "Photon Energy (eV)"

set xtics nomirror
set ytics nomirror

set zeroaxis lw 1 lt 2 lc 0
set label 1 "C$_{16}$H$_{8}$-up"   at 0.1075,-0.5 

set style line 1  linetype 1 linecolor rgb "#6c71c4"  linewidth 1 #violet
set style line 2  linetype 1 linecolor rgb "#859900"  linewidth 1 #green
set style line 3  linetype 1 linecolor rgb "#cb4b16"  linewidth 1 #orange
set style line 4  linetype 1 linecolor rgb "#2aa198"  linewidth 1 #cyan
set style line 5  linetype 1 linecolor rgb "#dc322f"  linewidth 1 #red
set style line 6  linetype 1 linecolor rgb "#268bd2"  linewidth 1 #blue
set style line 7  linetype 1 linecolor rgb "#d33682"  linewidth 1 #magenta
set style line 8  linetype 1 linecolor rgb "#b58900"  linewidth 1 #yellow

############ THREE IN ONE PLOT: KK FINAL RESULTS
set xtics 0.01
set ytics 0.2
set output "up-Da-final.tex"
set key right top
set xrange [0.07:0.12]
set ylabel "$D^{i}$"

#.813

p   "dsp.kk_x_8452_40-spin_scissor_0_Nc_18" u 1:(0.813*2*$4/($2+$3+1.e-10)) title "$D^{x}$" w l lw 3.0 dt 6 lc rgb "red",\
    "dsp.kk_y_8452_40-spin_scissor_0_Nc_18" u 1:(0.813*2*$4/($2+$3+1.e-10)) title "$D^{y}$" w l lw 3.0 dt 4 lc rgb "green",\
    "dsp.kk_z_8452_40-spin_scissor_0_Nc_18" u 1:(0.813*2*$4/($2+$3+1.e-10)) title "$D^{z}$" w l lw 1.5 dt 1 lc rgb "blue",\
