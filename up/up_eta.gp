set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"
set ylabel "{\\Large $\\eta^{ixy}(\\omega)$ \\ \\ [mC$^{3}$/J$^{2}$s$^{2}$]}"

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

set output "up-eta.mp"
p   "up_res/eta2.kk_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18" u 1:($2*lm) title "$\\eta^{xxy}$" w l lw 1.5 lt 1 dt 1,\
    "up_res/eta2.kk_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18" u 1:($3*lm) title "$\\eta^{yxy}$" w l lw 2.0 lt 2 dt 2,\
    "up_res/eta2.kk_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18" u 1:($4*lm) title "$\\eta^{zxy}$" w l lw 2.0 lt 6 dt 3,\


set output "up-eta-sm.mp"
p   "up_res/eta2.sm_0.02_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18" u 1:($2*lm) title "$\\eta^{xxy}$"     w l lw 1.5 lt 1 dt 1,\
    "up_res/eta2.sm_0.02_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18" u 1:($3*lm) title "$\\eta^{yxy}$" w l lw 2.0 lt 2 dt 2,\
    "up_res/eta2.sm_0.02_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18" u 1:($4*lm) title "$\\eta^{zxy}$"     w l lw 2.0 lt 6 dt 3,\


