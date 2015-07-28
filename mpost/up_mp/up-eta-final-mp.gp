# set terminal epslatex color colortext standalone
set terminal mp color solid latex 11
set xlabel "Photon Energy (eV)"

set style line 1  linetype 1 linecolor rgb "#6c71c4"  linewidth 1 #violet
set style line 2  linetype 1 linecolor rgb "#859900"  linewidth 1 #green
set style line 3  linetype 1 linecolor rgb "#cb4b16"  linewidth 1 #orange
set style line 4  linetype 1 linecolor rgb "#2aa198"  linewidth 1 #cyan
set style line 5  linetype 1 linecolor rgb "#dc322f"  linewidth 1 #red
set style line 6  linetype 1 linecolor rgb "#268bd2"  linewidth 1 #blue
set style line 7  linetype 1 linecolor rgb "#d33682"  linewidth 1 #magenta
set style line 8  linetype 1 linecolor rgb "#b58900"  linewidth 1 #yellow

set xtics nomirror
set ytics nomirror

set ylabel "$\\eta^{ixy}(\\omega)$ \\ \\ [mC$^{3}$/J$^{2}$s$^{2}$]"

#z lenght of layer [Angstroms (la) & meters (lm)]
la=2.766410479
lm=la*1E-10

set xtics nomirror
set ytics nomirror

# set xzeroaxis lw 1 lt 2 lc 0
set xzeroaxis lw 1 lt 2 lc 0

#######   THREE IN ONE PLOT 
# set title ""
# set xtics 0.05
set xrange [0.0:0.25]

set output "up_eta_kk_final.mp"
p   "../../up/eta2.kk_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18" u 1:($2*lm) title "$\\eta^{xxy}$" w l ls 2,\
    "../../up/eta2.kk_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18" u 1:($3*lm) title "$\\eta^{yxy}$" w l ls 5,\
    "../../up/eta2.kk_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18" u 1:($4*lm) title "$\\eta^{zxy}$" w l ls 4

# set output "up_eta_sm_final.mp"
# p   "../../up/eta2.sm_0.02_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18" u 1:($2*lm) title "$\\eta^{xxy}$" w l ls 2,\
#     "../../up/eta2.sm_0.02_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18" u 1:($3*lm*1.4) title "$\\eta^{yxy}$" w l ls 5,\
#     "../../up/eta2.sm_0.02_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18" u 1:($4*lm) title "$\\eta^{zxy}$" w l ls 4

