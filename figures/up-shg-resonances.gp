set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"

#######   check non zero components and symetryes 


abso(w,x,y,z)=(sqrt((w+y)**2+(x+z)**2))
#z lenght of layer [Angstroms (la) & meters (lm)]
lb=2.766410479
la=1.463921487
lm=la*1E-10
scale=lm*1E6

##### Final sm

unset zeroaxis


set xtics nomirror
set ytics nomirror

unset zeroaxis
set label 1 "{\\Large C$_{16}$H$_{8}$-up}"   at graph 0.75, graph 0.40 

# set yrange [0:40]
set xrange [0:0.14]
set key top right


#### 1w AND 2w RESONACES
set keytitle "xxx"
set output "up-shg-rsn-xxx.mp"
p   "up_res/shgL.vnl.sm_0.02_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(abso($2,$3,$4,$5))) t"abs"        w l lw 1.5 lt 1 dt 1,\
    "up_res/shgL.vnl.sm_0.02_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(sqrt($2**2+$3**2))) t"1$\\omega$" w l lw 2.5 lt 2 dt 2,\
    "up_res/shgL.vnl.sm_0.02_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(sqrt($4**2+$5**2))) t"2$\\omega$" w l lw 2.5 lt 6 dt 3,\

set keytitle "xxy"
set output "up-shg-rsn-xxy.mp"
p   "up_res/shgL.vnl.sm_0.02_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(abso($2,$3,$4,$5))) t"abs"        w l lw 1.5 lt 1 dt 1,\
    "up_res/shgL.vnl.sm_0.02_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(sqrt($2**2+$3**2))) t"1$\\omega$" w l lw 2.5 lt 2 dt 2,\
    "up_res/shgL.vnl.sm_0.02_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(sqrt($4**2+$5**2))) t"2$\\omega$" w l lw 2.5 lt 6 dt 3,\

set keytitle "xyy"
set output "up-shg-rsn-xyy.mp"
p   "up_res/shgL.vnl.sm_0.02_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(abso($2,$3,$4,$5))) t"abs"        w l lw 1.5 lt 1 dt 1,\
    "up_res/shgL.vnl.sm_0.02_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(sqrt($2**2+$3**2))) t"1$\\omega$" w l lw 2.5 lt 2 dt 2,\
    "up_res/shgL.vnl.sm_0.02_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(sqrt($4**2+$5**2))) t"2$\\omega$" w l lw 2.5 lt 6 dt 3,\

set keytitle "yxx"
set output "up-shg-rsn-yxx.mp"
p   "up_res/shgL.vnl.sm_0.02_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(abso($2,$3,$4,$5))) t"abs"        w l lw 1.5 lt 1 dt 1,\
    "up_res/shgL.vnl.sm_0.02_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(sqrt($2**2+$3**2))) t"1$\\omega$" w l lw 2.5 lt 2 dt 2,\
    "up_res/shgL.vnl.sm_0.02_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(sqrt($4**2+$5**2))) t"2$\\omega$" w l lw 2.5 lt 6 dt 3,\

set keytitle "yyy"
set output "up-shg-rsn-yyy.mp"
p   "up_res/shgL.vnl.sm_0.02_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(abso($2,$3,$4,$5))) t"abs"        w l lw 1.5 lt 6 dt 1,\
    "up_res/shgL.vnl.sm_0.02_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(sqrt($2**2+$3**2))) t"1$\\omega$" w l lw 2.5 lt 6 dt 2,\
    "up_res/shgL.vnl.sm_0.02_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(sqrt($4**2+$5**2))) t"2$\\omega$" w l lw 2.5 lt 6 dt 3,\



