set terminal epslatex color colortext standalone
set xlabel "Photon Energy (eV)"

set style line 1  linetype 1 linecolor rgb "#6c71c4"  linewidth 3 #violet
set style line 2  linetype 1 linecolor rgb "#859900"  linewidth 3 #green
set style line 3  linetype 1 linecolor rgb "#cb4b16"  linewidth 3 #orange
set style line 4  linetype 1 linecolor rgb "#2aa198"  linewidth 3 #cyan
set style line 5  linetype 1 linecolor rgb "#dc322f"  linewidth 3 #red
set style line 6  linetype 1 linecolor rgb "#268bd2"  linewidth 3 #blue
set style line 7  linetype 1 linecolor rgb "#d33682"  linewidth 3 #magenta
set style line 8  linetype 1 linecolor rgb "#b58900"  linewidth 3 #yellow

set ylabel "$\\eta^{ixy}(\\omega)$ \\ \\ [mC$^{3}$/J$^{2}$s$^{2}$]"

set xtics 0.25 nomirror
set ytics nomirror

#z lenght of layer [Angstroms (la) & meters (lm)]
la=5.564770162
lm=la*1E-10

# # set xrange [0.3:2]
# set output "alt-eta_kk-final.tex"
# p   "eta2.kk_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($2*lm) title "$\\eta^{xxy}$" w l ls 2,\
#     "eta2.kk_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($3*lm) title "$\\eta^{yxy}$" w l ls 5,\
#     "eta2.kk_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($4*lm) title "$\\eta^{zxy}$" w l ls 4,\

set zeroaxis lw 2 lt 2 lc 0
#######   THREE IN ONE PLOT 
set xrange [0.25:2]
set output "alt-eta_sm-final.tex"
p   "eta2.sm_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($2*lm) title "$\\eta^{xxy}$" w l ls 2,\
    "eta2.sm_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($3*lm) title "$\\eta^{yxy}$" w l ls 5,\
    "eta2.sm_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($4*lm) title "$\\eta^{zxy}$" w l ls 4,\
