set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"


abso(w,x,y,z)=(sqrt((w+y)**2+(x+z)**2))

set xtics nomirror
set ytics nomirror

unset zeroaxis
#set label 1 "{\\Large C$_{16}$H$_{8}$-alt}"   at graph 0.75, graph 0.40 
set ylabel '{\Large $|\chi^{abc}(2\omega;\omega,\omega)|$ [$10^{3}\times$ pm/V] }'

### nonlocal comparison

set key top right


set output "shg-vnl-alt.mp"
p "data/alt/res-nospin_0-2eV/shgL.vnl.sm_0.08_xyy_14452_65-nospin_scissor_0_Nc_41" u 1:(1e-3*abso($2,$3,$4,$5)) t 'xyy' w l lw 2 lt 1 dt 1,\
  "data/alt/res-nospin_0-2eV/shgL.vnl.sm_0.08_xxx_14452_65-nospin_scissor_0_Nc_41" u 1:(1e-3*abso($2,$3,$4,$5)) t 'xxx' w l lw 2 lt 2 dt 2,\
  "data/alt/res-nospin_0-2eV/shgL.vnl.sm_0.08_yxx_14452_65-nospin_scissor_0_Nc_41" u 1:(1e-3*abso($2,$3,$4,$5)) t 'yxx' w l lw 2 lt 6 dt 3

#set output "shg-vnl-alt-y.mp"
# "data/alt/res-nospin_0-2eV/shgL.vnl.sm_0.15_xxy_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'xxy' w l lw 2 lt 2 dt 2 ,\
# "data/alt/res-nospin_0-2eV/shgL.vnl.sm_0.15_yxy_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'yxy' w l lw 2 lt 2 dt 2 ,\
# "data/alt/res-nospin_0-2eV/shgL.vnl.sm_0.15_yyy_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'yyy' w l lw 2 lt 6 dt 3






