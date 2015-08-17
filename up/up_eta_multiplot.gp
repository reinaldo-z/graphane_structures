set terminal mp color dashed latex 11


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

set tmargin 0
set bmargin 0
set lmargin 10
set rmargin 2

set output "up-eta-multiplot.mp"
set size 1.0,3.0
set multiplot


set origin 0,2.3333333333
set size 1,0.6666666666
set xtics format "" nomirror
set yrange [-32:30]
set ylabel ""

p   "up_res/eta2.kk_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18"      u 1:($2*lm)  title "$\\eta^{xxy}$"       w l ls 1 lw 1.5 dt 1,\
    "up_res/calEta2.kk_xxy_yxy_zxy_8452_1_40-spin_scissor_0_Nc_18" u 1:(-$2*lm) title "$\\eta_{\\scriptsize{H_{l1}}}^{xxy}$"  w l ls 2 lw 2.5 dt 2,\
    "up_res/calEta2.kk_xxy_yxy_zxy_8452_2_40-spin_scissor_0_Nc_18" u 1:(-$2*lm) title "$\\eta_{\\scriptsize{C_{l2}}}^{xxy}$"  w l ls 6 lw 2.5 dt 3,\

set origin 0,1.6666666667
set size 1,0.6666666666
set xtics format "" mirror
set yrange [-12:22]
set ylabel "{\\Large $\\eta^{abc}(\\omega)$ \\ \\ [mC$^{3}$/J$^{2}$s$^{2}$]}"

p   "up_res/eta2.kk_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18"      u 1:($3*lm)  title "$\\eta^{yxy}$"       w l ls 1 lw 1.5 dt 1,\
    "up_res/calEta2.kk_xxy_yxy_zxy_8452_1_40-spin_scissor_0_Nc_18" u 1:(-$3*lm) title "$\\eta_{\\scriptsize{H_{l1}}}^{yxy}$"  w l ls 2 lw 2.5 dt 2,\
    "up_res/calEta2.kk_xxy_yxy_zxy_8452_2_40-spin_scissor_0_Nc_18" u 1:(-$3*lm) title "$\\eta_{\\scriptsize{C_{l2}}}^{yxy}$"  w l ls 6 lw 2.5 dt 3,\

set origin 0,1
set size 1,0.6666666666
set xtics format "%g" mirror
set yrange [-12:3]
set ylabel ""

set key bottom right
set xlabel "{\\Large Photon Energy (eV)}"

p   "up_res/eta2.kk_xxy_yxy_zxy_8452_40-spin_scissor_0_Nc_18"      u 1:($4*lm)  title "$\\eta^{zxy}$"       w l ls 1 lw 1.5 dt 1,\
    "up_res/calEta2.kk_xxy_yxy_zxy_8452_1_40-spin_scissor_0_Nc_18" u 1:(-$4*lm) title "$\\eta_{\\scriptsize{H_{l1}}}^{zxy}$"  w l ls 2 lw 2.5 dt 2,\
    "up_res/calEta2.kk_xxy_yxy_zxy_8452_2_40-spin_scissor_0_Nc_18" u 1:(-$4*lm) title "$\\eta_{\\scriptsize{C_{l2}}}^{zxy}$"  w l ls 6 lw 2.5 dt 3,\




