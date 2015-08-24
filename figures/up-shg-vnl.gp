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
set ylabel "{\\Large $|\\chi^{abc}(2\\omega; \\omega, \\omega)| \\times [10^{6} $\\,pm$^{2}$/V]}"

set xrange [0:0.14]
set key top right

#sm02

set output "up_shg_abs_x-02sm.mp"
p   "res-all-shg/shgL.sm_0.02_xxx_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xxx" w l lw 2 lt 1 dt 1,\
    "res-all-shg/shgL.sm_0.02_xxy_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xxy" w l lw 2 lt 2 dt 2,\
    "res-all-shg/shgL.sm_0.02_xxz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xxz" w l lw 2 lt 3 dt 3,\
    "res-all-shg/shgL.sm_0.02_xyy_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xyy" w l lw 2 lt 4 dt 4,\
    "res-all-shg/shgL.sm_0.02_xyz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xyz" w l lw 2 lt 5 dt 5,\
    "res-all-shg/shgL.sm_0.02_xzz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xzz" w l lw 2 lt 6 dt 6,\
    
set output "up_shg_abs_y-02sm.mp"
p   "res-all-shg/shgL.sm_0.02_yxx_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yxx" w l lw 2 lt 1 dt 1,\
    "res-all-shg/shgL.sm_0.02_yxy_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yxy" w l lw 2 lt 2 dt 2,\
    "res-all-shg/shgL.sm_0.02_yxz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yxz" w l lw 2 lt 3 dt 3,\
    "res-all-shg/shgL.sm_0.02_yyy_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yyy" w l lw 2 lt 4 dt 4,\
    "res-all-shg/shgL.sm_0.02_yyz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yyz" w l lw 2 lt 5 dt 5,\
    "res-all-shg/shgL.sm_0.02_yzz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yzz" w l lw 2 lt 6 dt 6,\

#sm15
set output "up_shg_abs_x-15sm.mp"
p   "res-all-shg/shgL.sm_0.15_xxx_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xxx" w l lw 2 lt 1 dt 1,\
    "res-all-shg/shgL.sm_0.15_xxy_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xxy" w l lw 2 lt 2 dt 2,\
    "res-all-shg/shgL.sm_0.15_xxz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xxz" w l lw 2 lt 3 dt 3,\
    "res-all-shg/shgL.sm_0.15_xyy_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xyy" w l lw 2 lt 4 dt 4,\
    "res-all-shg/shgL.sm_0.15_xyz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xyz" w l lw 2 lt 5 dt 5,\
    "res-all-shg/shgL.sm_0.15_xzz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xzz" w l lw 2 lt 6 dt 6,\
    
set output "up_shg_abs_y-15sm.mp"
p   "res-all-shg/shgL.sm_0.15_yxx_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yxx" w l lw 2 lt 1 dt 1,\
    "res-all-shg/shgL.sm_0.15_yxy_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yxy" w l lw 2 lt 2 dt 2,\
    "res-all-shg/shgL.sm_0.15_yxz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yxz" w l lw 2 lt 3 dt 3,\
    "res-all-shg/shgL.sm_0.15_yyy_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yyy" w l lw 2 lt 4 dt 4,\
    "res-all-shg/shgL.sm_0.15_yyz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yyz" w l lw 2 lt 5 dt 5,\
    "res-all-shg/shgL.sm_0.15_yzz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yzz" w l lw 2 lt 6 dt 6,\


#kk
set output "up_shg_abs_x-kk.mp"
p   "res-all-shg/shgL.kk_xxx_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xxx" w l lw 2 lt 1 dt 1,\
    "res-all-shg/shgL.kk_xxy_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xxy" w l lw 2 lt 2 dt 2,\
    "res-all-shg/shgL.kk_xxz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xxz" w l lw 2 lt 3 dt 3,\
    "res-all-shg/shgL.kk_xyy_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xyy" w l lw 2 lt 4 dt 4,\
    "res-all-shg/shgL.kk_xyz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xyz" w l lw 2 lt 5 dt 5,\
    "res-all-shg/shgL.kk_xzz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "xzz" w l lw 2 lt 6 dt 6,\
    
set output "up_shg_abs_y-kk.mp"
p   "res-all-shg/shgL.kk_yxx_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yxx" w l lw 2 lt 1 dt 1,\
    "res-all-shg/shgL.kk_yxy_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yxy" w l lw 2 lt 2 dt 2,\
    "res-all-shg/shgL.kk_yxz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yxz" w l lw 2 lt 3 dt 3,\
    "res-all-shg/shgL.kk_yyy_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yyy" w l lw 2 lt 4 dt 4,\
    "res-all-shg/shgL.kk_yyz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yyz" w l lw 2 lt 5 dt 5,\
    "res-all-shg/shgL.kk_yzz_8452_40-nospin_scissor_0_Nc_21" u 1:(scale*(abso($2,$3,$4,$5))) t "yzz" w l lw 2 lt 6 dt 6,\



