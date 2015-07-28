# set terminal epslatex color colortext standalone
set terminal mp color solid latex 11
set xlabel "Photon Energy (eV)"

set style line 1  linetype 1 linecolor rgb "#6c71c4"  linewidth 1 #violet
set style line 2  linetype 1 linecolor rgb "#859900"  linewidth 1 #green
set style line 3  linetype 1 linecolor rgb "#cb4b16"  linewidth 1 #orange
set style line 4  linetype 1 linecolor rgb "#2aa198"  linewidth 1 #cyan
set style line 5  linetype 1 linecolor rgb "#dc322f"  linewidth 1 #red
set style line 6  linetype 1 linecolor rgb "#268bd2"  linewidth 1 #blue
set style line 7  linetype 1 linecolor rgb "#d33682"  linewidth 1 #magenta
set style line 8  linetype 1 linecolor rgb "#b58900"  linewidth 1 #yellow

set xtics nomirror
set ytics nomirror
set zeroaxis lw 1 lt 2 lc 0

############ THREE IN ONE PLOT: KK FINAL RESULTS
set output "alt-Da-final.mp"
set xrange [0.716:0.726]
set yrange [*:*]
set key title ""
set ylabel "$D^{i}$"

p   "../../alt/dsp.kk_x_14452_65-spin_scissor_0_Nc_18" u 1:(2*$4/($2+$3+1.e-10)) title "$D^{x}$" w l ls 2,\
    "../../alt/dsp.kk_y_14452_65-spin_scissor_0_Nc_18" u 1:(2*$4/($2+$3+1.e-10)) title "$D^{y}$" w l ls 5,\
    "../../alt/dsp.kk_z_14452_65-spin_scissor_0_Nc_18" u 1:(2*$4/($2+$3+1.e-10)) title "$D^{z}$" w l ls 4,\
