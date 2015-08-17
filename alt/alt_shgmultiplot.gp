set terminal mp color dashed  latex 11

abso(w,x,y,z)=(sqrt((w+y)**2+(x+z)**2))

#z lenght of layer [Bohrs (lb) Angstroms (la) & meters (lm)]
lb=5.564770163
la=2.944749766
lm=la*1E-10
scale=lm*1E6

set ytics nomirror

set tmargin 0
set bmargin 0
set lmargin 10
set rmargin 2
unset xtics


unset xlabel
unset ylabel
unset zeroaxis


set output "alt-shgmultiplot.mp"
set yrange [0:0.37]

set size 1.0,3.0
set multiplot 
# set key autotitle column nobox samplen 1 noenhanced

set xtics format "" nomirror

set label 1 "{\\Large C$_{16}$H$_{8}$-alt}"   at graph 0.75, graph 0.40 

set key top right

set origin 0.0,2.0
set size 1.0,1.0

p   "alt_res/shgL.vnl.sm_0.15_xxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) title "xxx" w l lw 1.5 lt 1 dt 1,\
    "alt_res/shgL.vnl.sm_0.15_xxy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) title "xxy" w l lw 2.5 lt 2 dt 2,\
    "alt_res/shgL.vnl.sm_0.15_xyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) title "xyy" w l lw 2.5 lt 6 dt 3,\

unset xtics

set xlabel "{\\Large Photon Energy (eV)}"
set ylabel "{\\hspace{7.5cm} \\Large $|\\chi^{abc}(2\\omega; \\omega, \\omega)|$ [$\\times10^{6} $\\,pm$^{2}$/V] }"

set xtics mirror format "%g"

set origin 0.0,1.0
set size 1.0,1.0

p   "alt_res/shgL.vnl.sm_0.15_yxx_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) title "yxx" w l lw 1.5 lt 1 dt 1,\
    "alt_res/shgL.vnl.sm_0.15_yyy_14452_55-nospin_scissor_0_Nc_41" u 1:(scale*(abso($2,$3,$4,$5))) title "yyy" w l lw 2.5 lt 2 dt 2,\

unset multiplot
