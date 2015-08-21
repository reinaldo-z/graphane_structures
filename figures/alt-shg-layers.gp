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

set ylabel "{\\Large $|\\chi^{xxy}(2\\omega; \\omega, \\omega)|$ [$\\times10^{3} $\\,pm/V] }"
set output "alt_shg_abs-layers.mp"
p   "data/alt/res-nospin_0-2eV/shgL.sm_0.15_xxy_14452_65-nospin_scissor_0_Nc_21"   u 1:(exp*abso($2,$3,$4,$5)) title "Total" w l lw 1.5 lt 1 dt 1,\
    "data/alt/res-nospin_0-2eV/shgC.sm_0.15_xxy_14452_1_65-nospin_scissor_0_Nc_21" u 1:(exp*abso($2,$3,$4,$5)/scale2) title "1" w l lw 1.5 lt 2 dt 2,\
    "data/alt/res-nospin_0-2eV/shgC.sm_0.15_xxy_14452_2_65-nospin_scissor_0_Nc_21" u 1:(exp*abso($2,$3,$4,$5)/scale2) title "2" w l lw 1.5 lt 6 dt 3,\
    "data/alt/res-nospin_0-2eV/shgC.sm_0.15_xxy_14452_3_65-nospin_scissor_0_Nc_21" u 1:(exp*abso($2,$3,$4,$5)/scale2) title "3" w l lw 1.5 lt 8 dt 4

# set ylabel "{\\Large Im[$\\chi^{xxy}(2\\omega; \\omega, \\omega)$] [$\\times10^{3} $\\,pm/V] }"
# set output "alt_shg_abs-layers1.mp"
# p   "data/alt/res-nospin_0-2eV/shgL.sm_0.15_xxy_14452_65-nospin_scissor_0_Nc_21"   u 1:(exp*($3+$5)) title "Total" w l lw 1.5 lt 1 dt 1,\
#     "data/alt/res-nospin_0-2eV/shgC.sm_0.15_xxy_14452_1_65-nospin_scissor_0_Nc_21" u 1:(exp*($3+$5)/(scale2)) title "1" w l lw 1.5 lt 2 dt 2,\
#     "data/alt/res-nospin_0-2eV/shgC.sm_0.15_xxy_14452_2_65-nospin_scissor_0_Nc_21" u 1:(exp*($3+$5)/(scale2)) title "2" w l lw 1.5 lt 6 dt 3,\
#     "data/alt/res-nospin_0-2eV/shgC.sm_0.15_xxy_14452_3_65-nospin_scissor_0_Nc_21" u 1:(exp*($3+$5)/(scale2)) title "3" w l lw 1.5 lt 8 dt 4






