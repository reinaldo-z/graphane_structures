set terminal epslatex color colortext standalone
set xlabel "{\\large Photon Energy (eV)}"

set ylabel "{\\large $\\eta^{ixy}(\\omega)$ \\ \\ [mC$^{3}$/J$^{2}$s$^{2}$]}"

set xtics 0.25 nomirror
set ytics nomirror

#z lenght of layer [Angstroms (la) & meters (lm)]
la=2.944749766
lm=la*1E-10

# # set xrange [0.3:2]
# set output "alt-eta_kk-final.tex"
# p   "eta2.kk_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($2*lm) title "$\\eta^{xxy}$" w l ls 2,\
#     "eta2.kk_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($3*lm) title "$\\eta^{yxy}$" w l ls 5,\
#     "eta2.kk_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($4*lm) title "$\\eta^{zxy}$" w l ls 4,\

set zeroaxis lw 1 lt 2 lc 0
set label 1 "{\\large C$_{16}$H$_{8}$-alt}"   at 0.425,-1.15 


#######   THREE IN ONE PLOT 
set xrange [0.25:2]
set output "alt-eta_sm-final.tex"
p   "eta2.sm_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($2*lm) title "$\\eta^{xxy}$" w l lw 3.5 dt 6 lc rgb "red",\
    "eta2.sm_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($3*lm) title "$\\eta^{yxy}$" w l lw 1.5 dt 1 lc rgb "blue",\
    "eta2.sm_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($4*lm) title "$\\eta^{zxy}$" w l lw 3.5 dt 7 lc rgb "dark-green",\
