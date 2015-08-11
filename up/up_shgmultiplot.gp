set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"

#######   check non zero components and symetryes 


abso(w,x,y,z)=(sqrt((w+y)**2+(x+z)**2))
#z lenght of layer [Angstroms (la) & meters (lm)]
lb=2.766410479
la=1.463921487
lm=la*1E-10
scale=lm*1E6


unset zeroaxis

set ytics nomirror

set tmargin 0
set bmargin 0
set lmargin 10
set rmargin 2
unset xtics

unset xlabel
unset ylabel
unset zeroaxis

set output "up-shgmultiplot.mp"
set yrange [0:43]
set xrange [0:0.14]

set size 1.0,3.0
set multiplot 

set xtics format "" nomirror

set label 1 "{\\Large C$_{16}$H$_{8}$-up}"   at graph 0.75, graph 0.40 

set key top right

set origin 0.0,2.0
set size 1.0,1.0

p   "up_res/shgL.vnl.sm_0.02_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(abso($2,$3,$4,$5))) title "xxx" w l lw 1.5 lt 1 dt 1,\
    "up_res/shgL.vnl.sm_0.02_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(abso($2,$3,$4,$5))) title "xxy" w l lw 2.5 lt 2 dt 2,\

set xlabel "{\\Large Photon Energy (eV)}"
set ylabel "{\\hspace{7.5cm} \\Large $|\\chi^{ijk}(2\\omega; \\omega, \\omega)|$ [$\\times10^{6} $\\,pm$^{2}$/V] }"

set xtics mirror format "%g"

set origin 0.0,1.0
set size 1.0,1.0
    
p   "up_res/shgL.vnl.sm_0.02_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(abso($2,$3,$4,$5))) title "yxx" w l lw 1.5 lt 1 dt 1,\
    "up_res/shgL.vnl.sm_0.02_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(abso($2,$3,$4,$5))) title "yyy" w l lw 2.5 lt 2 dt 2,\
    "up_res/shgL.vnl.sm_0.02_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(abso($2,$3,$4,$5))) title "yzz" w l lw 2.5 lt 6 dt 3,\

unset multiplot
