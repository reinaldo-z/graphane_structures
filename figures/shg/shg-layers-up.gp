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
# set label 1 "{\\Large C$_{16}$H$_{8}$-up}"   at graph 0.75, graph 0.40 

set xrange [0.8:2.0]
set key top right


set output "shg-layers-up-xxx.mp"
set ylabel "{\\Large $|\\chi^{xxx}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xxx_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xxx_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xxx_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-up-xxy.mp"
set ylabel "{\\Large $|\\chi^{xxy}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xxy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xxy_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xxy_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-up-xxz.mp"
set ylabel "{\\Large $|\\chi^{xxz}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xxz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xxz_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xxz_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-up-xyy.mp"
set ylabel "{\\Large $|\\chi^{xyy}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xyy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xyy_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xyy_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-up-xyz.mp"
set ylabel "{\\Large $|\\chi^{xyz}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xyz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xyz_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xyz_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-up-xzz.mp"
set ylabel "{\\Large $|\\chi^{xzz}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_xzz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xzz_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_xzz_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-up-yxx.mp"
set ylabel "{\\Large $|\\chi^{yxx}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yxx_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yxx_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yxx_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-up-yxy.mp"
set ylabel "{\\Large $|\\chi^{yxy}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yxy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yxy_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yxy_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-up-yxz.mp"
set ylabel "{\\Large $|\\chi^{yxz}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yxz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yxz_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yxz_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-up-yyy.mp"
set ylabel "{\\Large $|\\chi^{yyy}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yyy_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yyy_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yyy_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-up-yyz.mp"
set ylabel "{\\Large $|\\chi^{yyz}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yyz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yyz_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yyz_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-up-yzz.mp"
set ylabel "{\\Large $|\\chi^{yzz}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/up/res-nospin_0-2eV/shgL.sm_0.15_yzz_8452_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yzz_8452_1_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/up/res-nospin_0-2eV/shgC.sm_0.15_yzz_8452_2_40-nospin_scissor_0_Nc_27" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2

