#!/bin/bash

cp w2sp-pss.clo sentPSS/
cp wiley2sp.cls sentPSS/
cp pss.bst sentPSS/pss.bst

cp pssb.201552565.tex sentPSS/pssb.201552565.tex
cp pssb.201552565.bib sentPSS/pssb.201552565.bib

cp figures/images/graph1.png  sentPSS/fig01.png
cp figures/images/graph2.png  sentPSS/fig02.png
cp figures/images/alt1.png  sentPSS/fig03.png
cp figures/images/alt2.png  sentPSS/fig04.png
cp figures/images/up1.png  sentPSS/fig05.png
cp figures/images/up2.png  sentPSS/fig06.png

cp figures/dsp-alt.pdf  sentPSS/fig07.pdf
cp figures/dsp-up.pdf  sentPSS/fig08.pdf
cp figures/eta-alt_x.pdf  sentPSS/fig09.pdf
cp figures/eta-alt_y.pdf  sentPSS/fig10.pdf
cp figures/eta-alt_z.pdf  sentPSS/fig11.pdf
cp figures/eta-up_x.pdf  sentPSS/fig12.pdf
cp figures/eta-up_y.pdf  sentPSS/fig13.pdf
cp figures/eta-up_z.pdf  sentPSS/fig14.pdf
cp figures/shg-vnl-alt.pdf  sentPSS/fig15.pdf
cp figures/shg-lay-alt.pdf  sentPSS/fig16.pdf
cp figures/shg-vnl-up.pdf  sentPSS/fig17.pdf
cp figures/shg-lay-up.pdf  sentPSS/fig18.pdf
cp figures/band-structure-up.pdf sentPSS/fig19.pdf

sed -i -- 's/figures\///g' sentPSS/pssb.201552565.tex
sed -i -- 's/images\///g' sentPSS/pssb.201552565.tex
sed -i -- 's/graphane_structures/pssb.201552565/g' sentPSS/pssb.201552565.tex

sed -i -- 's/graph1/fig01/g' sentPSS/pssb.201552565.tex
sed -i -- 's/graph2/fig02/g' sentPSS/pssb.201552565.tex
sed -i -- 's/alt1/fig03/g' sentPSS/pssb.201552565.tex
sed -i -- 's/alt2/fig04/g' sentPSS/pssb.201552565.tex
sed -i -- 's/up1/fig05/g' sentPSS/pssb.201552565.tex
sed -i -- 's/up2/fig06/g' sentPSS/pssb.201552565.tex
sed -i -- 's/dsp-alt/fig07/g' sentPSS/pssb.201552565.tex
sed -i -- 's/dsp-up/fig08/g' sentPSS/pssb.201552565.tex
sed -i -- 's/eta-alt_x/fig09/g' sentPSS/pssb.201552565.tex
sed -i -- 's/eta-alt_y/fig10/g' sentPSS/pssb.201552565.tex
sed -i -- 's/eta-alt_z/fig11/g' sentPSS/pssb.201552565.tex
sed -i -- 's/eta-up_x/fig12/g' sentPSS/pssb.201552565.tex
sed -i -- 's/eta-up_y/fig13/g' sentPSS/pssb.201552565.tex
sed -i -- 's/eta-up_z/fig14/g' sentPSS/pssb.201552565.tex
sed -i -- 's/shg-vnl-alt/fig15/g' sentPSS/pssb.201552565.tex
sed -i -- 's/shg-lay-alt/fig16/g' sentPSS/pssb.201552565.tex
sed -i -- 's/shg-vnl-up/fig17/g' sentPSS/pssb.201552565.tex
sed -i -- 's/shg-lay-up/fig18/g' sentPSS/pssb.201552565.tex
sed -i -- 's/band-structure-up/fig19/g' sentPSS/pssb.201552565.tex

rm sentPSS/pssb.201552565.tex--









