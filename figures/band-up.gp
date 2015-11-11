set terminal mp color dashed latex 11
# set size 0.6,1.6666
set size 0.5,1.0

unset zeroaxis
unset xtics
set ytics nomirror

set style line 5  dashtype 1 linecolor rgb "#dc322f"  linewidth 1.0 #red
set style line 6  dashtype 1 linecolor rgb "#268bd2"  linewidth 1.0 #blue

unset zeroaxis

set xrange [0:0.15]
set key top right

set xlabel "Wave Vector"
set xlabel  offset character 0, 0.5, 0 font "" textcolor lt -1 norotate
set xrange [ 1 : 59 ] noreverse nowriteback
set ylabel "Energy (eV)"
set ylabel  offset character 2, 0, 0 font "" textcolor lt -1 rotate by -270
set yrange [ -10 : 10 ] noreverse nowriteback
set zero 1e-08
set xtics ("K" 1, "$\\Gamma$" 21, "M" 41, "K" 59)
set xtics ("K" 1, "$\\Gamma$" 21, "M" 41, "K" 59)
set style arrow 1 nohead linecolor rgb "#000" linewidth 1.25
set style arrow 2 nohead linetype 2 linecolor rgb "#000" linewidth 1.5
set arrow from 21, -10 to 21, 10 as 1
set arrow from 41,-10 to 41,10 as 1

set output "band-up.mp"
p   "data/up/eigen-up.dat" u 1:($2-0.20069)  t "" w l ls 5,\
    "data/up/eigen-up.dat" u 1:($3-0.20069)  t "" w l ls 5,\
    "data/up/eigen-up.dat" u 1:($4-0.20069)  t "" w l ls 5,\
    "data/up/eigen-up.dat" u 1:($5-0.20069)  t "" w l ls 5,\
    "data/up/eigen-up.dat" u 1:($6-0.20069)  t "" w l ls 5,\
    "data/up/eigen-up.dat" u 1:($7-0.20069)  t "" w l ls 5,\
    "data/up/eigen-up.dat" u 1:($8-0.20069)  t "" w l ls 5,\
    "data/up/eigen-up.dat" u 1:($9-0.20069)  t "" w l ls 5,\
    "data/up/eigen-up.dat" u 1:($10-0.20069) t "" w l ls 5,\
    "data/up/eigen-up.dat" u 1:($11-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($12-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($13-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($14-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($15-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($17-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($18-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($19-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($20-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($21-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($22-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($23-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($24-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($25-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($26-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($27-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($28-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($29-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($30-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($31-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($32-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($33-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($34-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($35-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($36-0.20069) t "" w l ls 6,\
    "data/up/eigen-up.dat" u 1:($37-0.20069) t "" w l ls 6

# EOF
