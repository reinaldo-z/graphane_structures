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
set ylabel "{\\Large $|\\chi^{abc}(2\\omega; \\omega, \\omega)|$ [$\\times10^{6} $\\,pm$^{2}$/V] }"

### NONLOCAL

set key top right

set output "alt_shg_abs_x.mp"
p   "res-all-shg/shgL.sm_0.15_xxx_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xxx" w l lw 2 lt 1 dt 1,\
    "res-all-shg/shgL.sm_0.15_xxy_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xxy" w l lw 2 lt 2 dt 2,\
    "res-all-shg/shgL.sm_0.15_xxz_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xxz" w l lw 2 lt 3 dt 3,\
    "res-all-shg/shgL.sm_0.15_xyy_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xyy" w l lw 2 lt 4 dt 4,\
    "res-all-shg/shgL.sm_0.15_xyz_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xyz" w l lw 2 lt 5 dt 5,\
    "res-all-shg/shgL.sm_0.15_xzz_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xzz" w l lw 2 lt 6 dt 6,\

set output "alt_shg_abs_y.mp"
p   "res-all-shg/shgL.sm_0.15_yxx_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yxx" w l lw 2 lt 1 dt 1,\
    "res-all-shg/shgL.sm_0.15_yxy_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yxy" w l lw 2 lt 2 dt 2,\
    "res-all-shg/shgL.sm_0.15_yxz_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yxz" w l lw 2 lt 3 dt 3,\
    "res-all-shg/shgL.sm_0.15_yyy_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yyy" w l lw 2 lt 4 dt 4,\
    "res-all-shg/shgL.sm_0.15_yyz_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yyz" w l lw 2 lt 5 dt 5,\
    "res-all-shg/shgL.sm_0.15_yzz_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yzz" w l lw 2 lt 6 dt 6,\

set output "alt_shg_abs_z.mp"
p   "res-all-shg/shgL.sm_0.15_zxx_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "zxx" w l lw 2 lt 1 dt 1,\
    "res-all-shg/shgL.sm_0.15_zxy_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "zxy" w l lw 2 lt 2 dt 2,\
    "res-all-shg/shgL.sm_0.15_zxz_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "zxz" w l lw 2 lt 3 dt 3,\
    "res-all-shg/shgL.sm_0.15_zyy_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "zyy" w l lw 2 lt 4 dt 4,\
    "res-all-shg/shgL.sm_0.15_zyz_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "zyz" w l lw 2 lt 5 dt 5,\
    "res-all-shg/shgL.sm_0.15_zzz_14452_65-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "zzz" w l lw 2 lt 6 dt 6,\









