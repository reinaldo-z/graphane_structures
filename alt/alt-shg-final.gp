set terminal epslatex color colortext standalone
set xlabel "{\\large Photon Energy (eV)}"

#######   check non zero components and symetryes 

# set keytitle "tensor component"

abso(w,x,y,z)=(sqrt((w+y)**2+(x+z)**2))
#z lenght of layer [Angstroms (la) & meters (lm)]
la=5.564770162
lm=la*1E-10

set xtics nomirror
set ytics nomirror


##### Final kk  


# set title "C$_{16}$-H$_{2}$-alt: SHG abs non zero"
# # set xrange [0:0.2]
# set key top right
# set output "alt_shg_final-abs_kk.tex"
# set ylabel "$|\\chi^{ijk}(2\\omega; \\omega, \\omega)|$ [10$^{6} \\times$ pm$^{2}$/V] "
# p   "shgL.vnl.kk_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "xxx" w l ls 1,\
#     "shgL.vnl.kk_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "xxy" w l ls 2,\
#     "shgL.vnl.kk_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "yxx" w l ls 3,\
#     "shgL.vnl.kk_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "yyy" w l ls 4,\
#     "shgL.vnl.kk_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "yzz" w l ls 7,\

# set zeroaxis lw 2 lt 2 lc 0

# set title "C$_{16}$-H$_{2}$-alt: SHG Im non zero"
# # set xrange [0:0.12]
# set key top right
# set output "alt_shg_final-im_kk.tex"
# set ylabel "$|\\chi^{ijk}(2\\omega; \\omega, \\omega)|$ [10$^{6} \\times$ pm$^{2}$/V] "
# p   "shgL.vnl.kk_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($3+$5)) title "xxx" w l ls 1,\
#     "shgL.vnl.kk_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($3+$5)) title "xxy" w l ls 2,\
#     "shgL.vnl.kk_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($3+$5)) title "yxx" w l ls 3,\
#     "shgL.vnl.kk_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($3+$5)) title "yyy" w l ls 4,\
#     "shgL.vnl.kk_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($3+$5)) title "yzz" w l ls 7,\

# set title "C$_{16}$-H$_{2}$-alt: SHG Im non zero"
# # set xrange [0:0.18]
# set key top right
# set output "alt_shg_final-re_kk.tex"
# set ylabel "$|\\chi^{ijk}(2\\omega; \\omega, \\omega)|$ [10$^{6} \\times$ pm$^{2}$/V] "
# p   "shgL.vnl.kk_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($2+$4)) title "xxx" w l ls 1,\
#     "shgL.vnl.kk_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($2+$4)) title "xxy" w l ls 2,\
#     "shgL.vnl.kk_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($2+$4)) title "yxx" w l ls 3,\
#     "shgL.vnl.kk_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($2+$4)) title "yyy" w l ls 4,\
#     "shgL.vnl.kk_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($2+$4)) title "yzz" w l ls 7,\

# unset zeroaxis


##### Final sm  

unset zeroaxis
set label 1 "{\\large C$_{16}$H$_{8}$-alt}"   at 1.5,0.28 
# 0.4

set yrange [0:0.7]
set key top right
set output "alt_shg_final-abs_sm.tex"
set ylabel "{\\large $|\\chi^{ijk}(2\\omega; \\omega, \\omega)|$ [$\\times10^{6} $\\,pm$^{2}$/V] }"
p   "shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "xxx" w l lw 3.5 dt 6 lc rgb "red",\
    "shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "xxy" w l lw 3.5 dt 7 lc rgb "dark-green",\
    "shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "yxx" w l lw 1.5 dt 1 lc rgb "blue",\
    "shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "yyy" w l lw 3.5 dt 12 lc rgb "dark-orange",\
    "shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "yzz" w l lw 3.5 dt 13 lc rgb "magenta",\

set zeroaxis lw 1 lt 2 lc 0
unset label 1

# set yrange [-0.63:0.43]
# set key bottom right
# set output "alt_shg_final-im_sm.tex"
# set ylabel "Im $[\\chi^{ijk}(2\\omega; \\omega, \\omega)]$ [$\\times10^{6} $\\,pm$^{2}$/V] "
# p   "shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($3+$5)) title "xxx" w l ls 1,\
#     "shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($3+$5)) title "xxy" w l ls 2,\
#     "shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($3+$5)) title "yxx" w l ls 3,\
#     "shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($3+$5)) title "yyy" w l ls 4,\
#     "shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($3+$5)) title "yzz" w l ls 7,\

# set ytics 0.1
# set yrange [*:*]
# set yrange [-0.55:0.55]
# set key top right
# set output "alt_shg_final-re_sm.tex"
# set ylabel "Re $[\\chi^{ijk}(2\\omega; \\omega, \\omega)]$ [$\\times10^{6} $\\,pm$^{2}$/V] "
# p   "shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($2+$4)) title "xxx" w l ls 1,\
#     "shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($2+$4)) title "xxy" w l ls 2,\
#     "shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($2+$4)) title "yxx" w l ls 3,\
#     "shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($2+$4)) title "yyy" w l ls 4,\
#     "shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(lm*1E6*($2+$4)) title "yzz" w l ls 7,\



