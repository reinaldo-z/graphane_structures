set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"

set lmargin 10
set rmargin 2

set xtics nomirror
set ytics nomirror
set zeroaxis lw 1 lt 2 lc 0
set label 1 "{\\Large C$_{16}$H$_{8}$-alt}"   at graph 0.75, graph 0.15 

set output "alt-Da.mp"
set xrange [0.717:0.727]
set yrange [*:*]
set key title ""
set ylabel "{\\Large $D^{a}$}"


p   "alt_res/dsp.kk_x_14452_65-spin_scissor_0_Nc_18" u ($1+0.0015):(0.813*2*$4/($2+$3+1.e-10)) title "$D^{x}$" w l lw 1.5 lt 1 dt 1,\
    "alt_res/dsp.kk_y_14452_65-spin_scissor_0_Nc_18" u ($1+0.0015):(0.813*2*$4/($2+$3+1.e-10)) title "$D^{y}$" w l lw 2.0 lt 2 dt 2,\
    "alt_res/dsp.kk_z_14452_65-spin_scissor_0_Nc_18" u ($1+0.0015):(0.813*2*$4/($2+$3+1.e-10)) title "$D^{z}$" w l lw 2.0 lt 6 dt 3,\

