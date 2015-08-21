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

# set yrange [0:0.35]
set key top right


##### 1w AND 2w RESONACES
set keytitle "xxx"
set output "alt_shg_rsn-xxx.mp"
p   "alt_res/shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) t"abs"        w l lw 1.5 lt 1 dt 1,\
    "alt_res/shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($2**2+$3**2))) t"1$\\omega$" w l lw 2.5 lt 2 dt 2,\
    "alt_res/shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($4**2+$5**2))) t"2$\\omega$" w l lw 2.5 lt 6 dt 3,\

set keytitle "xxy"
set output "alt_shg_rsn-xxy.mp"
p   "alt_res/shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) t"abs"        w l lw 1.5 lt 1 dt 1,\
    "alt_res/shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($2**2+$3**2))) t"1$\\omega$" w l lw 2.5 lt 2 dt 2,\
    "alt_res/shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($4**2+$5**2))) t"2$\\omega$" w l lw 2.5 lt 6 dt 3,\

set keytitle "xyy"
set output "alt_shg_rsn-xyy.mp"
p   "alt_res/shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) t"abs"        w l lw 1.5 lt 1 dt 1,\
    "alt_res/shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($2**2+$3**2))) t"1$\\omega$" w l lw 2.5 lt 2 dt 2,\
    "alt_res/shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($4**2+$5**2))) t"2$\\omega$" w l lw 2.5 lt 6 dt 3,\

set keytitle "yxx"
set output "alt_shg_rsn-yxx.mp"
p   "alt_res/shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) t"abs"        w l lw 1.5 lt 1 dt 1,\
    "alt_res/shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($2**2+$3**2))) t"1$\\omega$" w l lw 2.5 lt 2 dt 2,\
    "alt_res/shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($4**2+$5**2))) t"2$\\omega$" w l lw 2.5 lt 6 dt 3,\

set keytitle "yyy"
set output "alt_shg_rsn-yyy.mp"
p   "alt_res/shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) t"abs"        w l lw 1.5 lt 1 dt 1,\
    "alt_res/shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($2**2+$3**2))) t"1$\\omega$" w l lw 2.5 lt 2 dt 2,\
    "alt_res/shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(sqrt($4**2+$5**2))) t"2$\\omega$" w l lw 2.5 lt 6 dt 3,\





