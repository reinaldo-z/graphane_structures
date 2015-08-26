set terminal mp color dashed latex 11

set xlabel "{\\Large Photon Energy (eV)}"


abso(w,x,y,z)=(sqrt((w+y)**2+(x+z)**2))

#z lenght of layer [Bohrs (lb) Angstroms (la) & meters (lm)]
lb=5.564770163
acellz=35
angs=52.9177249
scale1=lb*angs*1e-6

scale2=acellz*angs*1e-6
exp=1e-3

lb=5.564770163
la=2.944749766
lm=la*1E-10
scale=lm*1E8

set xtics nomirror
set ytics nomirror

unset zeroaxis
set label 1 "{\\Large C$_{16}$H$_{8}$-alt}"   at graph 0.75, graph 0.15 

### NONLOCAL

set key top right


set output "shg-layers-alt-xxx.mp"
set ylabel "{\\Large $|\\chi^{xxx}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/alt/res-nospin_0-2eV/shgL.sm_0.15_xxx_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_xxx_14452_1_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_xxx_14452_2_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-alt-xxy.mp"
set ylabel "{\\Large $|\\chi^{xxy}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/alt/res-nospin_0-2eV/shgL.sm_0.15_xxy_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_xxy_14452_1_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_xxy_14452_2_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-alt-xxz.mp"
set ylabel "{\\Large $|\\chi^{xxz}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/alt/res-nospin_0-2eV/shgL.sm_0.15_xxz_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_xxz_14452_1_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_xxz_14452_2_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-alt-xyy.mp"
set ylabel "{\\Large $|\\chi^{xyy}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/alt/res-nospin_0-2eV/shgL.sm_0.15_xyy_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_xyy_14452_1_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_xyy_14452_2_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-alt-xyz.mp"
set ylabel "{\\Large $|\\chi^{xyz}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/alt/res-nospin_0-2eV/shgL.sm_0.15_xyz_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_xyz_14452_1_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_xyz_14452_2_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-alt-xzz.mp"
set ylabel "{\\Large $|\\chi^{xzz}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/alt/res-nospin_0-2eV/shgL.sm_0.15_xzz_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_xzz_14452_1_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_xzz_14452_2_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-alt-yxx.mp"
set ylabel "{\\Large $|\\chi^{yxx}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/alt/res-nospin_0-2eV/shgL.sm_0.15_yxx_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_yxx_14452_1_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_yxx_14452_2_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-alt-yxy.mp"
set ylabel "{\\Large $|\\chi^{yxy}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/alt/res-nospin_0-2eV/shgL.sm_0.15_yxy_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_yxy_14452_1_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_yxy_14452_2_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-alt-yxz.mp"
set ylabel "{\\Large $|\\chi^{yxz}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/alt/res-nospin_0-2eV/shgL.sm_0.15_yxz_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_yxz_14452_1_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_yxz_14452_2_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-alt-yyy.mp"
set ylabel "{\\Large $|\\chi^{yyy}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/alt/res-nospin_0-2eV/shgL.sm_0.15_yyy_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_yyy_14452_1_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_yyy_14452_2_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-alt-yyz.mp"
set ylabel "{\\Large $|\\chi^{yyz}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/alt/res-nospin_0-2eV/shgL.sm_0.15_yyz_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_yyz_14452_1_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_yyz_14452_2_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2
set output "shg-layers-alt-yzz.mp"
set ylabel "{\\Large $|\\chi^{yzz}(2\\omega; \\omega, \\omega)|$ [pm/V] }"
p "../data/alt/res-nospin_0-2eV/shgL.sm_0.15_yzz_14452_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)) t 'Total' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_yzz_14452_1_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'H' w l lw 2, "../data/alt/res-nospin_0-2eV/shgC.sm_0.15_yzz_14452_2_65-nospin_scissor_0_Nc_41" u 1:(abso($2,$3,$4,$5)/1587.531747e-6) t 'C' w l lw 2




