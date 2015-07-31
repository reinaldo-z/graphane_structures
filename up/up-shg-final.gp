set terminal epslatex color colortext standalone
set xlabel "{\\large Photon Energy (eV)}"

#######   check non zero components and symetryes 


abso(w,x,y,z)=(sqrt((w+y)**2+(x+z)**2))
#z lenght of layer [Angstroms (la) & meters (lm)]
la=2.766410479
lm=la*1E-10

# unset zeroaxis

##### Final kk  

# set xrange [0.02:0.1]
# set key top right
# set output "up_shg_final_abs_kk.tex"
# set ylabel "$|\\chi^{ijk}(2\\omega; \\omega, \\omega)|$ [10$^{6} \\times$ pm$^{2}$/V] "
# p   "shgL.vnl.kk_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "xxx" w l ls 1,\
#     "shgL.vnl.kk_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "xxy" w l ls 2,\
#     "shgL.vnl.kk_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "yxx" w l ls 3,\
#     "shgL.vnl.kk_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "yyy" w l ls 4,\
#     "shgL.vnl.kk_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*(abso($2,$3,$4,$5))) title "yzz" w l ls 7,\


# set zeroaxis lw 2 lt 2 lc 0

# set xtics 0.004
# set ytics 200
# set xrange [0.04:0.06]
# set key bottom right
# set output "up_shg_final_im-kk.tex"
# set ylabel "Im[$\\chi^{ijk}(2\\omega; \\omega, \\omega)]$ [10$^{6} \\times$ pm$^{2}$/V] "
# p   "shgL.vnl.kk_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($3+$5)) title "xxx" w l ls 1,\
#     "shgL.vnl.kk_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($3+$5)) title "xxy" w l ls 2,\
#     "shgL.vnl.kk_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($3+$5)) title "yxx" w l ls 3,\
#     "shgL.vnl.kk_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($3+$5)) title "yyy" w l ls 4,\
#     "shgL.vnl.kk_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($3+$5)) title "yzz" w l ls 7,\

# set xtics 0.01
# set xrange [0.03:0.07]
# set key top right
# set output "up_shg_final_re-kk.tex"
# set ylabel "Re[$\\chi^{ijk}(2\\omega; \\omega, \\omega)]$ [10$^{6} \\times$ pm$^{2}$/V] "
# p   "shgL.vnl.kk_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($2+$4)) title "xxx" w l ls 1,\
#     "shgL.vnl.kk_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($2+$4)) title "xxy" w l ls 2,\
#     "shgL.vnl.kk_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($2+$4)) title "yxx" w l ls 3,\
#     "shgL.vnl.kk_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($2+$4)) title "yyy" w l ls 4,\
#     "shgL.vnl.kk_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($2+$4)) title "yzz" w l ls 7,\


##### Final sm

unset zeroaxis


set xtics nomirror
set ytics nomirror

unset zeroaxis
set label 1 "{\\large C$_{16}$H$_{8}$-up}"   at 0.105,30 

set yrange [0:75]
set xrange [0:0.14]
set key top right
set output "up_shg_final_abs_sm.tex"
set ylabel "{\\large $|\\chi^{ijk}(2\\omega; \\omega, \\omega)| \\times [10^{6} $\\,pm$^{2}$/V]}"
p   "shgL.vnl.sm_0.02_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(0.000146052920724*(abso($2,$3,$4,$5))) title "xxx" w l lw 3.5 dt 6 lc rgb "red",\
    "shgL.vnl.sm_0.02_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(0.000146052920724*(abso($2,$3,$4,$5))) title "xxy" w l lw 3.5 dt 7 lc rgb "dark-green",\
    "shgL.vnl.sm_0.02_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(0.000146052920724*(abso($2,$3,$4,$5))) title "yxx" w l lw 1.5 dt 1 lc rgb "blue",\
    "shgL.vnl.sm_0.02_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(0.000146052920724*(abso($2,$3,$4,$5))) title "yyy" w l lw 3.5 dt 12 lc rgb "dark-orange",\
    "shgL.vnl.sm_0.02_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(0.000146052920724*(abso($2,$3,$4,$5))) title "yzz" w l lw 3.5 dt 13 lc rgb "magenta",\

set zeroaxis lw 1 lt 2 lc 0
unset label 1

# set yrange [-80:20]
# set ytics 20
# set xrange [0:0.15]
# set key center right
# set output "up_shg_final_im-sm.tex"
# set ylabel "Im[$\\chi^{ijk}(2\\omega; \\omega, \\omega)] \\times [10^{6} $\\,pm$^{2}$/V] "
# p   "shgL.vnl.sm_0.02_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($3+$5)) title "xxx" w l ls 1,\
#     "shgL.vnl.sm_0.02_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($3+$5)) title "xxy" w l ls 2,\
#     "shgL.vnl.sm_0.02_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($3+$5)) title "yxx" w l ls 3,\
#     "shgL.vnl.sm_0.02_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($3+$5)) title "yyy" w l ls 4,\
#     "shgL.vnl.sm_0.02_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($3+$5)) title "yzz" w l ls 7,\

# set yrange [*:*]
# set xrange [0:0.13]
# set key bottom right
# set output "up_shg_final_re-sm.tex"
# set ylabel "Re[$\\chi^{ijk}(2\\omega; \\omega, \\omega)] \\times [10^{6} $\\,pm$^{2}$/V] "
# p   "shgL.vnl.sm_0.02_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($2+$4)) title "xxx" w l ls 1,\
#     "shgL.vnl.sm_0.02_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($2+$4)) title "xxy" w l ls 2,\
#     "shgL.vnl.sm_0.02_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($2+$4)) title "yxx" w l ls 3,\
#     "shgL.vnl.sm_0.02_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($2+$4)) title "yyy" w l ls 4,\
#     "shgL.vnl.sm_0.02_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(lm*1E6*($2+$4)) title "yzz" w l ls 7,\


