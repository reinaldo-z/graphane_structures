set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"


set xtics 0.25 nomirror
set ytics nomirror

#z lenght of layer [Angstroms (la) & meters (lm)]
lb=5.564770163
la=2.944749766
lm=la*1E-10

set zeroaxis lw 1 lt 2 lc 0
#set label "{\\Large C$_{16}$H$_{8}$-alt}"   at  graph 0.8, graph 0.9 


#######   THREE IN ONE PLOT 
set xrange [0.25:2]
set yrange [-6:5]

set key title "Layers"

set ylabel "{\\Large $\\eta^{xxy}(\\omega)$ [mC$^{3}$/J$^{2}$s$^{2}$]}"
set key left bottom
set output "eta-alt_x.mp"
p   "data/alt/res-nospin_0-2eV/eta2.kk_xxy_yxy_zxy_14452_65-nospin_scissor_0_Nc_41"      u 1:($2*lm)  title "Total" w l ls 1 lw 2,\
    "data/alt/res-nospin_0-2eV/calEta2.kk_xxy_yxy_zxy_14452_1_65-nospin_scissor_0_Nc_41" u 1:(-$2*lm) title "H-top"  w l ls 2 lw 2 dt 2,\
    "data/alt/res-nospin_0-2eV/calEta2.kk_xxy_yxy_zxy_14452_2_65-nospin_scissor_0_Nc_41" u 1:(-$2*lm) title "C"  w l ls 6 lw 2 dt 3,\
    "data/alt/res-nospin_0-2eV/calEta2.kk_xxy_yxy_zxy_14452_3_65-nospin_scissor_0_Nc_41" u 1:(-$2*lm) title "H-bottom"  w l ls 8 lw 2 dt 4,\

set ylabel "{\\Large $\\eta^{yxy}(\\omega)$ [mC$^{3}$/J$^{2}$s$^{2}$]}"
set key bottom right
set output "eta-alt_y.mp"
p   "data/alt/res-nospin_0-2eV/eta2.kk_xxy_yxy_zxy_14452_65-nospin_scissor_0_Nc_41"      u 1:($3*lm)  title "Total"  w l ls 1 lw 2,\
    "data/alt/res-nospin_0-2eV/calEta2.kk_xxy_yxy_zxy_14452_1_65-nospin_scissor_0_Nc_41" u 1:(-$3*lm) title "H-top"  w l ls 2 lw 2 dt 2,\
    "data/alt/res-nospin_0-2eV/calEta2.kk_xxy_yxy_zxy_14452_2_65-nospin_scissor_0_Nc_41" u 1:(-$3*lm) title "C"  w l ls 6 lw 2 dt 3,\
    "data/alt/res-nospin_0-2eV/calEta2.kk_xxy_yxy_zxy_14452_3_65-nospin_scissor_0_Nc_41" u 1:(-$3*lm) title "H-bottom"  w l ls 8 lw 2 dt 4,\

unset label
#set label "{\\Large C$_{16}$H$_{8}$-alt}"   at  graph 0.07, graph 0.15 
set ylabel "{\\Large $\\eta^{zxy}(\\omega)$ [mC$^{3}$/J$^{2}$s$^{2}$]}"
set key bottom right
set output "eta-alt_z.mp"
p   "data/alt/res-nospin_0-2eV/eta2.kk_xxy_yxy_zxy_14452_65-nospin_scissor_0_Nc_41"      u 1:($4*lm)  title "Total"  w l ls 1 lw 2,\
    "data/alt/res-nospin_0-2eV/calEta2.kk_xxy_yxy_zxy_14452_1_65-nospin_scissor_0_Nc_41" u 1:(-$4*lm) title "H-top"  w l ls 2 lw 2 dt 6,\
    "data/alt/res-nospin_0-2eV/calEta2.kk_xxy_yxy_zxy_14452_2_65-nospin_scissor_0_Nc_41" u 1:(-$4*lm) title "C"  w l ls 6 lw 3 dt 2,\
    "data/alt/res-nospin_0-2eV/calEta2.kk_xxy_yxy_zxy_14452_3_65-nospin_scissor_0_Nc_41" u 1:(-$4*lm) title "H-bottom"  w l ls 8 lw 2 dt 5,\

