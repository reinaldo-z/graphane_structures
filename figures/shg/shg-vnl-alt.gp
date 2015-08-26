set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"


abso(w,x,y,z)=(sqrt((w+y)**2+(x+z)**2))

#z lenght of layer [Bohrs (lb) Angstroms (la) & meters (lm)]
lb=5.564770163
acellz=35
angs=52.9177249
scale1=lb*angs*1e-6
scale2=acellz*angs*1e-6

lb=5.564770163
la=2.944749766
lm=la*1E-10
scale=lm*1E6

set xtics nomirror
set ytics nomirror

unset zeroaxis
set label 1 "{\\Large C$_{16}$H$_{8}$-alt}"   at graph 0.75, graph 0.40 
set ylabel "{\\Large $|\\chi^{abc}(2\\omega; \\omega, \\omega)|$ [pm/V] }"

### nonlocal comparison

set key top right


set output "shg-vnl-alt-x.mp"
p"../data/alt/res-nospin_0-2eV/shgL.vnl.sm_0.15_xxx_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'xxx' w l lw 2 lt 1 dt 1 ,\
 "../data/alt/res-nospin_0-2eV/shgL.vnl.sm_0.15_xxy_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'xxy' w l lw 2 lt 2 dt 2 ,\
 "../data/alt/res-nospin_0-2eV/shgL.vnl.sm_0.15_xyy_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'xyy' w l lw 2 lt 6 dt 3 ,\

set output "shg-vnl-alt-y.mp"
p"../data/alt/res-nospin_0-2eV/shgL.vnl.sm_0.15_yxx_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'yxx' w l lw 2 lt 1 dt 1 ,\
 "../data/alt/res-nospin_0-2eV/shgL.vnl.sm_0.15_yxy_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'yxy' w l lw 2 lt 2 dt 2 ,\
 "../data/alt/res-nospin_0-2eV/shgL.vnl.sm_0.15_yyy_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'yyy' w l lw 2 lt 6 dt 3






