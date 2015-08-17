set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"
set ylabel "{\\Large $\\eta^{abc}(\\omega)$ \\ \\ [mC$^{3}$/J$^{2}$s$^{2}$]}"

#z lenght of layer [Angstroms (la) & meters (lm)]
lb=2.766410479
la=1.463921487
lm=la*1E-10

set xtics nomirror
set ytics nomirror

set xzeroaxis lw 1 lt 2 lc 0

set label 1 "{\\Large C$_{16}$H$_{8}$-up}"   at  graph 0.07, graph 0.15 


#######   THREE IN ONE PLOT 
# set title ""
# set xtics 0.05
set xrange [0.0:0.25]
set yrange [-15:20]

set output "up-eta.mp"
p   "up_res/eta2.kk_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18" u 1:($2*lm) title "$\\eta^{xxy}$"       w l ls 1 lw 1.5 dt 1,\
    "up_res/eta2.kk_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18" u 1:($3*lm) title "$\\eta^{yxy}$"       w l ls 2 lw 2.5 dt 2,\
    "up_res/eta2.kk_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18" u 1:($4*lm) title "$\\eta^{zxy}$"       w l ls 6 lw 2.5 dt 3,\

set yrange [-30:30]
set output "up-eta-x.mp"
p   "up_res/eta2.kk_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18"      u 1:($2*lm)  title "$\\eta^{xxy}$"       w l ls 1 lw 1.5 dt 1,\
    "up_res/calEta2.kk_xxy_yxy_zxy_8452_1_40-spin_scissor_0_Nc_18" u 1:(-$2*lm) title "$\\eta_{\\scriptsize{H_{l1}}}^{xxy}$"  w l ls 2 lw 2.5 dt 2,\
    "up_res/calEta2.kk_xxy_yxy_zxy_8452_2_40-spin_scissor_0_Nc_18" u 1:(-$2*lm) title "$\\eta_{\\scriptsize{C_{l2}}}^{xxy}$"  w l ls 6 lw 2.5 dt 3,\

set yrange [-15:20]
set output "up-eta-y.mp"
p   "up_res/eta2.kk_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18"      u 1:($3*lm)  title "$\\eta^{yxy}$"       w l ls 1 lw 1.5 dt 1,\
    "up_res/calEta2.kk_xxy_yxy_zxy_8452_1_40-spin_scissor_0_Nc_18" u 1:(-$3*lm) title "$\\eta_{\\scriptsize{H_{l1}}}^{yxy}$"  w l ls 2 lw 2.5 dt 2,\
    "up_res/calEta2.kk_xxy_yxy_zxy_8452_2_40-spin_scissor_0_Nc_18" u 1:(-$3*lm) title "$\\eta_{\\scriptsize{C_{l2}}}^{yxy}$"  w l ls 6 lw 2.5 dt 3,\

set output "up-eta-z.mp"
p   "up_res/eta2.kk_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18"      u 1:($4*lm)  title "$\\eta^{zxy}$"       w l ls 1 lw 1.5 dt 1,\
    "up_res/calEta2.kk_xxy_yxy_zxy_8452_1_40-spin_scissor_0_Nc_18" u 1:(-$4*lm) title "$\\eta_{\\scriptsize{H_{l1}}}^{zxy}$"  w l ls 2 lw 2.5 dt 2,\
    "up_res/calEta2.kk_xxy_yxy_zxy_8452_2_40-spin_scissor_0_Nc_18" u 1:(-$4*lm) title "$\\eta_{\\scriptsize{C_{l2}}}^{zxy}$"  w l ls 6 lw 2.5 dt 3,\




