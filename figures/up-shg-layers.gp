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

### LAYERS

set xtics nomirror
set ytics nomirror

unset zeroaxis
set label 1 "{\\Large C$_{16}$H$_{8}$-up}"   at graph 0.75, graph 0.40 
set ylabel "{\\Large $|\\chi^{abc}(2\\omega; \\omega, \\omega)| \\times [10^{6} $\\,pm$^{2}$/V]}"

set xrange [0:0.14]
set key top right

set output "up_shg_abs_x1.mp"
p   "data/up/res-nospin_0-2eV/shgL.sm_0.15_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(abso($2,$3,$4,$5))) title "xxx" w l lw 1.5 lt 1 dt 1,\
    "data/up/res-nospin_0-2eV/shgL.sm_0.15_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(abso($2,$3,$4,$5))) title "xxy" w l lw 2.5 lt 2 dt 2,\
    
set output "up_shg_abs_y1.mp"
p   "data/up/res-nospin_0-2eV/shgL.sm_0.15_xyy_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(abso($2,$3,$4,$5))) title "yxx" w l lw 1.5 lt 1 dt 1,\
    "data/up/res-nospin_0-2eV/shgL.sm_0.15_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(abso($2,$3,$4,$5))) title "yyy" w l lw 2.5 lt 2 dt 2,\
    "data/up/res-nospin_0-2eV/shgL.sm_0.15_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(scale*(abso($2,$3,$4,$5))) title "yzz" w l lw 2.5 lt 6 dt 3,\









### LAYERS





