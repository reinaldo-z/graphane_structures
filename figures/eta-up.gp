set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"

#z lenght of layer [Angstroms (la) & meters (lm)]
lb=2.766410479
la=1.463921487
lm=la*1E-10

set xtics nomirror
set ytics nomirror

set xzeroaxis lw 1 lt 2 lc 0

#set label 1 "{\\Large C$_{16}$H$_{8}$-up}"   at  graph 0.07, graph 0.15 
set key title "Layers"

#######   THREE IN ONE PLOT 
# set title ""
# set xtics 0.05
set xrange [0.04:0.2]
set yrange [-20:20]


set ylabel "{\\Large $\\eta^{xxy}(\\omega)$ [mC$^{3}$/J$^{2}$s$^{2}$]}"
# set yrange [-30:30]
set output "eta-up_x.mp"
p   "data/up/res-nospin_0-2eV/eta2.kk_xxy_yxy_zxy_8452_40-nospin_scissor_0_Nc_27"      u ($1-.004):($2*lm)  title "Total" w l ls 1 lw 2,\
    "data/up/res-nospin_0-2eV/calEta2.kk_xxy_yxy_zxy_8452_1_40-nospin_scissor_0_Nc_27" u ($1-.004):(-$2*lm) title "H"  w l ls 2 lw 2 dt 2,\
    "data/up/res-nospin_0-2eV/calEta2.kk_xxy_yxy_zxy_8452_2_40-nospin_scissor_0_Nc_27" u ($1-.004):(-$2*lm) title "C"  w l ls 6 lw 2 dt 3,\

set ylabel "{\\Large $\\eta^{yxy}(\\omega)$ [mC$^{3}$/J$^{2}$s$^{2}$]}"
# set yrange [-15:20]
set output "eta-up_y.mp"
p   "data/up/res-nospin_0-2eV/eta2.kk_xxy_yxy_zxy_8452_40-nospin_scissor_0_Nc_27"      u ($1-.004):($3*lm)  title "Total" w l ls 1 lw 2,\
    "data/up/res-nospin_0-2eV/calEta2.kk_xxy_yxy_zxy_8452_1_40-nospin_scissor_0_Nc_27" u ($1-.004):(-$3*lm) title "H"  w l ls 2 lw 2 dt 2,\
    "data/up/res-nospin_0-2eV/calEta2.kk_xxy_yxy_zxy_8452_2_40-nospin_scissor_0_Nc_27" u ($1-.004):(-$3*lm) title "C"  w l ls 6 lw 2 dt 3,\

set key bottom right

set ylabel "{\\Large $\\eta^{zxy}(\\omega)$ [mC$^{3}$/J$^{2}$s$^{2}$]}"
set output "eta-up_z.mp"
p   "data/up/res-nospin_0-2eV/eta2.kk_xxy_yxy_zxy_8452_40-nospin_scissor_0_Nc_27"      u ($1-.004):($4*lm)  title "Total" w l ls 1 lw 2,\
    "data/up/res-nospin_0-2eV/calEta2.kk_xxy_yxy_zxy_8452_1_40-nospin_scissor_0_Nc_27" u ($1-.004):(-$4*lm) title "H"  w l ls 2 lw 2 dt 2,\
    "data/up/res-nospin_0-2eV/calEta2.kk_xxy_yxy_zxy_8452_2_40-nospin_scissor_0_Nc_27" u ($1-.004):(-$4*lm) title "C"  w l ls 6 lw 3 dt 3,\




