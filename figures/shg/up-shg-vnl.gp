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
set ylabel "{\\Large $|\\chi^{abc}(2\\omega; \\omega, \\omega)|$ [pm/V] }"

set xrange [0.8:2.0]
set key top right


set output "up-xxx.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xxx no' w l lw 2, "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xxx yes' w l lw 2
set output "up-xxy.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xxy no' w l lw 2, "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xxy yes' w l lw 2
set output "up-xxz.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xxz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xxz no' w l lw 2, "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_xxz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xxz yes' w l lw 2
set output "up-xyy.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xyy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xyy no' w l lw 2, "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_xyy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xyy yes' w l lw 2
set output "up-xyz.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xyz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xyz no' w l lw 2, "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_xyz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xyz yes' w l lw 2
set output "up-xzz.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xzz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xzz no' w l lw 2, "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_xzz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xzz yes' w l lw 2
set output "up-yxx.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yxx no' w l lw 2, "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yxx yes' w l lw 2
set output "up-yxy.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yxy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yxy no' w l lw 2, "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_yxy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yxy yes' w l lw 2
set output "up-yxz.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yxz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yxz no' w l lw 2, "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_yxz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yxz yes' w l lw 2
set output "up-yyy.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yyy no' w l lw 2, "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yyy yes' w l lw 2
set output "up-yyz.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yyz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yyz no' w l lw 2, "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_yyz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yyz yes' w l lw 2
set output "up-yzz.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yzz no' w l lw 2, "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yzz yes' w l lw 2


set output "shgvnl-up-x.mp"
p "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xxx' w l lw 2 lt 1 dt 1 ,\
  "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xxy' w l lw 2 lt 2 dt 2 ,\
  "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_xyy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xyy' w l lw 2 lt 6 dt 6 ,\
  "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_xyz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'xyz' w l lw 2 lt 4 dt 4

set output "shgvnl-up-y.mp"
p "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yxx' w l lw 2 lt 1 dt 1 ,\
  "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_yxy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yxy' w l lw 2 lt 2 dt 2 ,\
  "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yyy' w l lw 2 lt 6 dt 6 ,\
  "../data/up/res-nospin_0-2eV/shgL.vnl.sm_0.15_yyz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'yyz' w l lw 2 lt 4 dt 4




