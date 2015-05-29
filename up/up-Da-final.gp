# set terminal epslatex size 17cm,10cm color colortext standalone
set terminal epslatex color colortext standalone
set xlabel "Photon Energy (eV)"

set xtics nomirror
set ytics nomirror

set style line 1  linetype 1 linecolor rgb "#6c71c4"  linewidth 3 #violet
set style line 2  linetype 1 linecolor rgb "#859900"  linewidth 3 #green
set style line 3  linetype 1 linecolor rgb "#cb4b16"  linewidth 3 #orange
set style line 4  linetype 1 linecolor rgb "#2aa198"  linewidth 3 #cyan
set style line 5  linetype 1 linecolor rgb "#dc322f"  linewidth 3 #red
set style line 6  linetype 1 linecolor rgb "#268bd2"  linewidth 3 #blue
set style line 7  linetype 1 linecolor rgb "#d33682"  linewidth 3 #magenta
set style line 8  linetype 1 linecolor rgb "#b58900"  linewidth 3 #yellow

set zeroaxis lw 2 lt 2 lc 0

############ THREE IN ONE PLOT: KK FINAL RESULTS
set xtics 0.01
set ytics 0.2
set output "up-Da-final.tex"
set key right center
set xrange [0.07:0.12]
set ylabel "$D^{a}$"

p   "dsp.kk_x_8452_40-spin_scissor_0_Nc_18" u 1:(2*$4/($2+$3+1.e-10)) title "$D^{x}$" w l ls 2,\
    "dsp.kk_y_8452_40-spin_scissor_0_Nc_18" u 1:(2*$4/($2+$3+1.e-10)) title "$D^{y}$" w l ls 5,\
    "dsp.kk_z_8452_40-spin_scissor_0_Nc_18" u 1:(2*$4/($2+$3+1.e-10)) title "$D^{z}$" w l ls 4,\
