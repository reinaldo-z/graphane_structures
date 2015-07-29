set terminal epslatex color colortext standalone
set xlabel "{\\large Photon Energy (eV)}"

set xtics nomirror
set ytics nomirror
set zeroaxis lw 1 lt 2 lc 0
set label 1 "{\\large C$_{16}$H$_{8}$-alt}"   at 0.7235,-0.32 

############ THREE IN ONE PLOT: KK FINAL RESULTS
set output "alt-Da-final.tex"
set xrange [0.716:0.726]
set yrange [*:*]
set key title ""
set ylabel "{\\large $D^{i}$}"

#.813

p   "dsp.kk_x_14452_65-spin_scissor_0_Nc_18" u 1:(0.813*2*$4/($2+$3+1.e-10)) title "$D^{x}$" w l lw 3.5 dashtype 6 lc rgb "red",\
    "dsp.kk_y_14452_65-spin_scissor_0_Nc_18" u 1:(0.813*2*$4/($2+$3+1.e-10)) title "$D^{y}$" w l lw 1.5 dashtype 1  lc rgb "blue",\
    "dsp.kk_z_14452_65-spin_scissor_0_Nc_18" u 1:(0.813*2*$4/($2+$3+1.e-10)) title "$D^{z}$" w l lw 3.5 dashtype 7 lc rgb "dark-green",\


#5  6,7 12,13

