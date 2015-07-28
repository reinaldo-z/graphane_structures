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

#######   check non zero components and symetryes 

set keytitle "tensor component"

abso(w,x,y,z)=(sqrt((w+y)**2+(x+z)**2))
#z lenght of layer [Angstroms (la) & meters (lm)]
la=5.564770162
lm=la*1E-10

set xtics nomirror
set ytics nomirror

##### Final sm  

unset zeroaxis

set yrange [0:0.7]
set key top right
set output "alt_shg_final-abs_sm.mp"
set ylabel "$|\\chi^{ijk}(2\\omega; \\omega, \\omega)|$ [\\times10$^{6} $\\,pm$^{2}$/V] "
p   "../../alt/shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "xxx" w l ls 1,\
    "../../alt/shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "xxy" w l ls 2,\
    "../../alt/shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "yxx" w l ls 3,\
    "../../alt/shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "yyy" w l ls 4,\
    "../../alt/shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "yzz" w l ls 7,\

set zeroaxis lw 1 lt 2 lc 0

# set yrange [-0.63:0.43]
# set key bottom right
# set output "alt_shg_final-im_sm.mp"
# set ylabel "Im $[\\chi^{ijk}(2\\omega; \\omega, \\omega)]$ [\\times10$^{6} $\\,pm$^{2}$/V] "
# p   "shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($3+$5)) title "xxx" w l ls 1,\
#     "shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($3+$5)) title "xxy" w l ls 2,\
#     "shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($3+$5)) title "yxx" w l ls 3,\
#     "shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($3+$5)) title "yyy" w l ls 4,\
#     "shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($3+$5)) title "yzz" w l ls 7,\

# set ytics 0.1
# set yrange [*:*]
# set yrange [-0.55:0.55]
# set key top right
# set output "alt_shg_final-re_sm.mp"
# set ylabel "Re $[\\chi^{ijk}(2\\omega; \\omega, \\omega)]$ [\\times10$^{6} $\\,pm$^{2}$/V] "
# p   "shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($2+$4)) title "xxx" w l ls 1,\
#     "shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($2+$4)) title "xxy" w l ls 2,\
#     "shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($2+$4)) title "yxx" w l ls 3,\
#     "shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($2+$4)) title "yyy" w l ls 4,\
#     "shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($2+$4)) title "yzz" w l ls 7,\



