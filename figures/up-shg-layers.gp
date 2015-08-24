set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"

#######   check non zero components and symetryes 

lb=5.564770163
acellz=30
angs=52.9177249
scale1=lb*angs*1e-6

scale2=acellz*angs*1e-6
exp=1e-3

lb=5.564770163
la=2.944749766
lm=la*1E-10
scale=lm*1E8



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
    
set output "up_shg_x.mp"
p   "data/up/res-nospin_0-2eV/shgL.sm_0.02_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(exp*abso($2,$3,$4,$5)) t "xxy" w l lw 2 lt 1 dt 1,\
    "data/up/res-nospin_0-2eV/shgL.sm_0.02_xyy_8452_40-nospin_scissor_0_Nc_27" u 1:(exp*abso($2,$3,$4,$5)) t "xyy" w l lw 2 lt 2 dt 2,\
    
set output "up_shg_y.mp"
p   "data/up/res-nospin_0-2eV/shgL.sm_0.02_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(exp*abso($2,$3,$4,$5)) t "yxx" w l lw 2 lt 1 dt 1,\
    "data/up/res-nospin_0-2eV/shgL.sm_0.02_yxy_8452_40-nospin_scissor_0_Nc_27" u 1:(exp*abso($2,$3,$4,$5)) t "yxy" w l lw 2 lt 2 dt 2,\
    "data/up/res-nospin_0-2eV/shgL.sm_0.02_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(exp*abso($2,$3,$4,$5)) t "yzz" w l lw 2 lt 6 dt 3,\

#### vnl
set output "up_shg_x-vnl.mp"
p   "data/up/res-nospin_0-2eV/shgL.vnl.sm_0.02_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(exp*abso($2,$3,$4,$5)) t "xxy" w l lw 2 lt 1 dt 1,\
    "data/up/res-nospin_0-2eV/shgL.vnl.sm_0.02_xyy_8452_40-nospin_scissor_0_Nc_27" u 1:(exp*abso($2,$3,$4,$5)) t "xyy" w l lw 2 lt 2 dt 2,\
    
set output "up_shg_y-vnl.mp"
p   "data/up/res-nospin_0-2eV/shgL.vnl.sm_0.02_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(exp*abso($2,$3,$4,$5)) t "yxx" w l lw 2 lt 1 dt 1,\
    "data/up/res-nospin_0-2eV/shgL.vnl.sm_0.02_yxy_8452_40-nospin_scissor_0_Nc_27" u 1:(exp*abso($2,$3,$4,$5)) t "yxy" w l lw 2 lt 2 dt 2,\
    "data/up/res-nospin_0-2eV/shgL.vnl.sm_0.02_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(exp*abso($2,$3,$4,$5)) t "yzz" w l lw 2 lt 6 dt 3,\




