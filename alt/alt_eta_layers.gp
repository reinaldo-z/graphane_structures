set terminal mp color dashed latex 11


unset ylabel
unset xlabel

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

set tmargin 0
set bmargin 0
set lmargin 10
set rmargin 2

set output "alt-eta-layers.mp"
set size 1.0,4.0
set multiplot

set origin 0,3
set size 1,1
set xtics format "" nomirror
set yrange [-2.7:1.5]

p   "alt_res/eta2.kk_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18"          u 1:($2*lm)     title "$\\eta^{xxy}$"       w l ls 1 lw 1.5 dt 1,\
    "alt_res/calEta2.kk_xxy_yxy_zxy_14452_1_65-nospin_scissor_0.0_Nc_21" u 1:(-$2*lm*.7) title "$\\eta_{\\scriptsize{H_{l1}}}^{xxx}$"  w l ls 2 lw 2.5 dt 2,\
    "alt_res/calEta2.kk_xxy_yxy_zxy_14452_2_65-nospin_scissor_0.0_Nc_21" u 1:(-$2*lm*.7) title "$\\eta_{\\scriptsize{C_{l2}}}^{xxx}$"  w l ls 3 lw 2.5 dt 3,\
    "alt_res/calEta2.kk_xxy_yxy_zxy_14452_3_65-nospin_scissor_0.0_Nc_21" u 1:(-$2*lm*.7) title "$\\eta_{\\scriptsize{H_{l3}}}^{xxx}$"  w l ls 4 lw 2.5 dt 4,\

set origin 0,2
set size 1,1
set xtics format "" mirror
set yrange [-4.5:2.7]

set ylabel "{\\Large $\\eta^{ixy}(\\omega)$ \\ \\ [mC$^{3}$/J$^{2}$s$^{2}$]}"

p   "alt_res/eta2.kk_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18"          u 1:($3*lm)     title "$\\eta^{yxy}$"       w l ls 1 lw 1.5 dt 1,\
    "alt_res/calEta2.kk_xxy_yxy_zxy_14452_1_65-nospin_scissor_0.0_Nc_21" u 1:(-$3*lm*.7) title "$\\eta_{\\scriptsize{H_{l1}}}^{xxx}$"  w l ls 2 lw 2.5 dt 2,\
    "alt_res/calEta2.kk_xxy_yxy_zxy_14452_2_65-nospin_scissor_0.0_Nc_21" u 1:(-$3*lm*.7) title "$\\eta_{\\scriptsize{C_{l2}}}^{xxx}$"  w l ls 3 lw 2.5 dt 3,\
    "alt_res/calEta2.kk_xxy_yxy_zxy_14452_3_65-nospin_scissor_0.0_Nc_21" u 1:(-$3*lm*.7) title "$\\eta_{\\scriptsize{H_{l3}}}^{xxx}$"  w l ls 4 lw 2.5 dt 4,\

set ylabel ""

set origin 0,1
set size 1,1
set xtics format "%g" mirror
set yrange [-3.5:0.7]
set key bottom right

set xlabel "{\\Large Photon Energy (eV)}"

p   "alt_res/eta2.kk_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18"          u 1:($4*lm)     title "$\\eta^{zxy}$"       w l ls 1 lw 1.5 dt 1,\
    "alt_res/calEta2.kk_xxy_yxy_zxy_14452_1_65-nospin_scissor_0.0_Nc_21" u 1:(-$4*lm*.7) title "$\\eta_{\\scriptsize{H_{l1}}}^{xxx}$"  w l ls 2 lw 2.5 dt 2,\
    "alt_res/eta2.kk_xxy_yxy_zxy_14452_65-spin_scissor_0_Nc_18" u 1:($4*lm) title "$\\eta_{\\scriptsize{C_{l2}}}^{xxx}$"  w l ls 3 lw 2.5 dt 3,\
    "alt_res/calEta2.kk_xxy_yxy_zxy_14452_3_65-nospin_scissor_0.0_Nc_21" u 1:(-$4*lm*.7) title "$\\eta_{\\scriptsize{H_{l3}}}^{xxx}$"  w l ls 4 lw 2.5 dt 4,\

unset multiplot









