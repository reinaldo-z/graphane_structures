set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"

set xtics nomirror
set ytics nomirror
set zeroaxis lw 1 lt 2 lc 0
set label 1 "{\\Large C$_{16}$H$_{8}$-up}"   at graph 0.75, graph 0.15

set xtics 0.01
set ytics 0.2
set output "up_Da.mp"
set key right top
set xrange [0.07:0.12]
set ylabel "{\\Large $D^{a}(\\omega)$}"


p   "data/up/res-spin_0-0.8eV/dsp.kk-x-scissor_0_Nc_27" u ($1+0.003):(0.813*2*$4/($2+$3+1.e-10)) title "$D^{x}$" w l lw 2.0 lt 1 dt 1,\
    "data/up/res-spin_0-0.8eV/dsp.kk-y-scissor_0_Nc_27" u ($1+0.003):(0.813*2*$4/($2+$3+1.e-10)) title "$D^{y}$" w l lw 2.0 lt 2 dt 2,\
    "data/up/res-spin_0-0.8eV/dsp.kk-z-scissor_0_Nc_27" u ($1+0.003):(0.813*2*$4/($2+$3+1.e-10)) title "$D^{z}$" w l lw 2.0 lt 6 dt 3,\
