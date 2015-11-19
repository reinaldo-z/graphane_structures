#!/bin/bash

cp w2sp-pss.clo sentPSS/
cp wiley2sp.cls sentPSS/
cp pss.bst sentPSS/pss.bst

cp pssb.201552565.tex sentPSS/graphene_structuresPSS.tex
cp graphane_structures.bib sentPSS/graphene_structuresPSS.bib

cp figures/images/graph1.png  sentPSS/
cp figures/images/graph2.png  sentPSS/
cp figures/images/alt1.png  sentPSS/
cp figures/images/alt2.png  sentPSS/
cp figures/images/up1.png  sentPSS/
cp figures/images/up2.png  sentPSS/

cp figures/band-structure-up.pdf sentPSS/
cp figures/dsp-alt.pdf  sentPSS/
cp figures/dsp-up.pdf  sentPSS/
cp figures/eta-alt_x.pdf  sentPSS/
cp figures/eta-alt_y.eps  sentPSS/
cp figures/eta-alt_z.eps  sentPSS/
cp figures/eta-up_x.pdf  sentPSS/
cp figures/eta-up_y.eps  sentPSS/
cp figures/eta-up_z.eps  sentPSS/
cp figures/shg-vnl-alt.pdf  sentPSS/
cp figures/shg-lay-alt.eps  sentPSS/
cp figures/shg-vnl-up.pdf  sentPSS/
cp figures/shg-lay-up.eps  sentPSS/

sed -i -- 's/figures\///g' sentPSS/graphene_structuresPSS.tex
sed -i -- 's/images\///g' sentPSS/graphene_structuresPSS.tex
sed -i -- 's/graphane_structures/graphene_structuresPSS/g' sentPSS/graphene_structuresPSS.tex

rm sentPSS/graphene_structuresPSS.tex--
