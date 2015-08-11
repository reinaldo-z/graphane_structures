set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"

set ylabel "{\\Large $\\eta^{ixy}(\\omega)$ \\ \\ [mC$^{3}$/J$^{2}$s$^{2}$]}"

set xtics 0.25 nomirror
set ytics nomirror

#z lenght of layer [Angstroms (la) & meters (lm)]
lb=5.564770163
la=2.944749766
lm=la*1E-10

set zeroaxis lw 1 lt 2 lc 0
set label 1 "{\\Large C$_{16}$H$_{8}$-alt}"   at  graph 0.07, graph 0.15 


#######   THREE IN ONE PLOT 
set xrange [0.25:2]
set output "alt-etasm.mp"
p   "alt_res/eta2.sm_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($2*lm) title "$\\eta^{xxy}$" w l lw 1.5 lt 1 dt 1,\
    "alt_res/eta2.sm_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($3*lm) title "$\\eta^{yxy}$" w l lw 2.0 lt 2 dt 2,\
    "alt_res/eta2.sm_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($4*lm) title "$\\eta^{zxy}$" w l lw 2.0 lt 6 dt 3,\

set output "alt-eta.mp"
p   "alt_res/eta2.kk_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($2*lm) title "$\\eta^{xxy}$" w l lw 1.5 lt 1 dt 1,\
    "alt_res/eta2.kk_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($3*lm) title "$\\eta^{yxy}$" w l lw 2.0 lt 2 dt 2,\
    "alt_res/eta2.kk_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($4*lm) title "$\\eta^{zxy}$" w l lw 2.0 lt 6 dt 3,\
