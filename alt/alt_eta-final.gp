set terminal epslatex color colortext standalone
set xlabel "Photon Energy (eV)"

# set style line 1  linetype 1 linecolor rgb "#6c71c4"  linewidth 1 #violet
# set style line 2  linetype 1 linecolor rgb "#859900"  linewidth 1 #green
# set style line 3  linetype 1 linecolor rgb "#cb4b16"  linewidth 1 #orange
# set style line 4  linetype 1 linecolor rgb "#2aa198"  linewidth 1 #cyan
# set style line 5  linetype 1 linecolor rgb "#dc322f"  linewidth 1 #red
# set style line 6  linetype 1 linecolor rgb "#268bd2"  linewidth 1 #blue
# set style line 7  linetype 1 linecolor rgb "#d33682"  linewidth 1 #magenta
# set style line 8  linetype 1 linecolor rgb "#b58900"  linewidth 1 #yellow

set style line 1 lt 2 lc rgb "red" lw 3
set style line 2 lt 2 lc rgb "orange" lw 2
set style line 3 lt 2 lc rgb "yellow" lw 3
set style line 4 lt 2 lc rgb "green" lw 2

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

set zeroaxis lw 1 lt 2 lc 0
set label 1 "C$_{16}$H$_{8}$-alt"   at 0.425,-2.3 


#######   THREE IN ONE PLOT 
set xrange [0.25:2]
set output "alt-eta_sm-final.tex"
p   "eta2.sm_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($2*lm) title "$\\eta^{xxy}$" w l lw 3.0 dt 6 lc rgb "red",\
    "eta2.sm_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($3*lm) title "$\\eta^{yxy}$" w l lw 1.5 dt 1 lc rgb "blue",\
    "eta2.sm_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($4*lm) title "$\\eta^{zxy}$" w l lw 3.0 dt 4 lc rgb "green",\
