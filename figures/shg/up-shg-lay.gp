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


set output "up-xxx-lay.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xxx_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xxx_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "up-xxy-lay.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xxy_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xxy_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "up-xxz-lay.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xxz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xxz_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xxz_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "up-xyy-lay.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xyy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xyy_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xyy_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "up-xyz-lay.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xyz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xyz_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xyz_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "up-xzz-lay.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xzz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xzz_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xzz_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "up-yxx-lay.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yxx_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yxx_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "up-yxy-lay.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yxy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yxy_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yxy_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "up-yxz-lay.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yxz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yxz_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yxz_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "up-yyy-lay.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yyy_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yyy_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "up-yyz-lay.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yyz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yyz_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yyz_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "up-yzz-lay.mp"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yzz_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yzz_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2

