set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"

scale=1/(1852.1203715000001*1e-6)
abso(w,x,y,z)=(sqrt((w+y)**2+(x+z)**2))

set xtics nomirror
set ytics nomirror

unset zeroaxis
#set label 1 "{\\Large C$_{16}$H$_{8}$-alt}"   at graph 0.75, graph 0.40 
set ylabel '{\Large $|\chi^{xyy}(2\omega;\omega,\omega)|$ [$10^{3}\times$ pm/V] }'

### nonlocal comparison

set key top right
# set yrange [0:3]


set output "shg-lay-alt.mp"
p "data/alt/res-nospin_0-2eV/shgL.vnl.sm_0.08_xyy_14452_65-nospin_scissor_0_Nc_41" u 1:(1e-3*abso($2,$3,$4,$5))           t 'Total'    w l lw 2 lt 1 dt 1 ,\
  "data/alt/res-nospin_0-2eV/shgC.sm_0.08_xyy_14452_1_65-nospin_scissor_0_Nc_41"   u 1:(0.9*1e-3*scale*abso($2,$3,$4,$5)) t 'H-top'    w l lw 2 lt 2 dt 2 ,\
  "data/alt/res-nospin_0-2eV/shgC.sm_0.08_xyy_14452_2_65-nospin_scissor_0_Nc_41"   u 1:(0.9*1e-3*scale*abso($2,$3,$4,$5)) t 'C'        w l lw 2 lt 6 dt 3 ,\
  "data/alt/res-nospin_0-2eV/shgC.sm_0.08_xyy_14452_3_65-nospin_scissor_0_Nc_41"   u 1:(0.9*1e-3*scale*abso($2,$3,$4,$5)) t 'H-bottom' w l lw 2 lt 8 dt 4







