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
#set label 1 "{\\Large C$_{16}$H$_{8}$-up}"   at graph 0.75, graph 0.40 
set ylabel '{\Large $|\chi^{abc}(2\omega;\omega,\omega)|$ [$10^{6}\times$ pm/V] }'

set xrange [0:0.14]
set key top right


set output "shg-vnl-up.mp"
p "data/up/res-nospin_0-2eV/shgL.vnl.sm_0.006_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)*1e-6) t 'yxx' w l lw 2 lt 1 dt 1,\
  "data/up/res-nospin_0-2eV/shgL.vnl.sm_0.006_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)*1e-6) t 'xxy' w l lw 2 lt 2 dt 2,\
  "data/up/res-nospin_0-2eV/shgL.vnl.sm_0.006_yxy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)*1e-6) t 'yxy' w l lw 2 lt 6 dt 3
  
  # "data/up/res-nospin_0-2eV/shgL.vnl.sm_0.006_yyz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)*1e-6) t 'yyz' w l lw 2 lt 3 dt 3,\
  # "data/up/res-nospin_0-2eV/shgL.vnl.sm_0.006_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)*1e-6) t 'xxx' w l lw 2 lt 4 dt 4,\
  # "data/up/res-nospin_0-2eV/shgL.vnl.sm_0.006_xyz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)*1e-6) t 'xyz' w l lw 2 lt 5 dt 5,\
  # "data/up/res-nospin_0-2eV/shgL.vnl.sm_0.006_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)*1e-6) t 'yyy' w l lw 2 lt 7 dt 7,\
  # "data/up/res-nospin_0-2eV/shgL.vnl.sm_0.006_yyz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)*1e-6) t 'yyz' w l lw 2 lt 8 dt 8




