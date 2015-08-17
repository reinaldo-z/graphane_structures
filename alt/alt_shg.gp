set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"

set lmargin 10
set rmargin 2

abso(w,x,y,z)=(sqrt((w+y)**2+(x+z)**2))

#z lenght of layer [Bohrs (lb) Angstroms (la) & meters (lm)]
lb=5.564770163
la=2.944749766
lm=la*1E-10
scale=lm*1E6

set xtics nomirror
set ytics nomirror

##### Final sm  

unset zeroaxis
set label 1 "{\\Large C$_{16}$H$_{8}$-alt}"   at graph 0.75, graph 0.40 
# 0.85, 0.4

set yrange [0:0.35]
set key top right

set output "alt-shg-abs-x.mp"
set ylabel "{\\Large $|\\chi^{abc}(2\\omega; \\omega, \\omega)|$ [$\\times10^{6} $\\,pm$^{2}$/V] }"
p   "alt_res/shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) title "xxx" w l lw 1.5 lt 1 dt 1,\
    "alt_res/shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) title "xxy" w l lw 2.5 lt 2 dt 2,\
    "alt_res/shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) title "xyy" w l lw 2.5 lt 6 dt 3,\

set output "alt-shg-abs-y.mp"
p   "alt_res/shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) title "yxx" w l lw 1.5 lt 1 dt 1,\
    "alt_res/shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) title "yyy" w l lw 2.5 lt 2 dt 2,\



##### 1w AND 2w RESONACES
set keytitle "xxx"
set output "alt-shg-rsn-xxx.mp"
p   "alt_res/shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) t"abs"        w l lw 1.5 lt 1 dt 1,\
    "alt_res/shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($2**2+$3**2))) t"1$\\omega$" w l lw 2.5 lt 1 dt 2,\
    "alt_res/shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($4**2+$5**2))) t"2$\\omega$" w l lw 2.5 lt 1 dt 3,\

set keytitle "xxy"
set output "alt-shg-rsn-xxy.mp"
p   "alt_res/shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) t"abs"        w l lw 1.5 lt 2 dt 1,\
    "alt_res/shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($2**2+$3**2))) t"1$\\omega$" w l lw 2.5 lt 2 dt 2,\
    "alt_res/shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($4**2+$5**2))) t"2$\\omega$" w l lw 2.5 lt 2 dt 3,\

set keytitle "xyy"
set output "alt-shg-rsn-xyy.mp"
p   "alt_res/shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) t"abs"        w l lw 1.5 lt 6 dt 1,\
    "alt_res/shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($2**2+$3**2))) t"1$\\omega$" w l lw 2.5 lt 6 dt 2,\
    "alt_res/shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($4**2+$5**2))) t"2$\\omega$" w l lw 2.5 lt 6 dt 3,\

set keytitle "yxx"
set output "alt-shg-rsn-yxx.mp"
p   "alt_res/shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) t"abs"        w l lw 1.5 lt 1 dt 1,\
    "alt_res/shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($2**2+$3**2))) t"1$\\omega$" w l lw 2.5 lt 1 dt 2,\
    "alt_res/shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($4**2+$5**2))) t"2$\\omega$" w l lw 2.5 lt 1 dt 3,\

set keytitle "yyy"
set output "alt-shg-rsn-yyy.mp"
p   "alt_res/shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) t"abs"        w l lw 1.5 lt 2 dt 1,\
    "alt_res/shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($2**2+$3**2))) t"1$\\omega$" w l lw 2.5 lt 2 dt 2,\
    "alt_res/shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($4**2+$5**2))) t"2$\\omega$" w l lw 2.5 lt 2 dt 3,\



##### REAL AND IMAGINARY
set zeroaxis lw 1 lt 2 lc 0
unset label 1

# set yrange [-0.63:0.43]
# set key bottom right
# set output "alt-shg-im.mp"
# set ylabel "Im $[\\chi^{abc}(2\\omega; \\omega, \\omega)]$ [$\\times10^{6} $\\,pm$^{2}$/V] "
# p   "alt_res/shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*($3+$5)) title "xxx" w l ls 1,\
#     "alt_res/shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*($3+$5)) title "xxy" w l ls 2,\
#     "alt_res/shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*($3+$5)) title "yxx" w l ls 3,\
#     "alt_res/shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*($3+$5)) title "yyy" w l ls 4,\
#     "alt_res/shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*($3+$5)) title "yzz" w l ls 7,\

# set ytics 0.1
# set yrange [*:*]
# set yrange [-0.55:0.55]
# set key top right
# set output "alt-shg-re.mp"
# set ylabel "Re $[\\chi^{abc}(2\\omega; \\omega, \\omega)]$ [$\\times10^{6} $\\,pm$^{2}$/V] "
# p   "alt_res/shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*($2+$4)) title "xxx" w l ls 1,\
#     "alt_res/shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*($2+$4)) title "xxy" w l ls 2,\
#     "alt_res/shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*($2+$4)) title "yxx" w l ls 3,\
#     "alt_res/shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*($2+$4)) title "yyy" w l ls 4,\
#     "alt_res/shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*($2+$4)) title "yzz" w l ls 7,\



