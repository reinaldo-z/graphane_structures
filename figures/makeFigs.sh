#!/bin/bash

gpfiles=( dsp-alt.gp dsp-up.gp eta-alt.gp eta-up.gp shg-vnl-alt.gp shg-vnl-up.gp shg-lay-alt.gp shg-lay-up.gp )
# gpfiles=( dsp-alt.gp )

for j in ${gpfiles[@]}; do
    N=0
    echo "$j:"
    MPFILES=(`grep output "$j" | grep -v \# |awk -F"\"" '{for(i=2;i<=NF;i+=2)print $i}'`)
    echo -e "\t${MPFILES[@]}"
    echo ""
    gnuplot "$j"
    
    for i in "${MPFILES[@]}"; do
            FILE=${i%???}
            echo -e "\t\tMaking: $FILE.eps"
            mpost --tex=latex "$FILE".mp
            echo "
\documentclass[12pt,legalpaper]{article}
\usepackage{amsfonts}
\usepackage{amsmath,mathrsfs}
\usepackage{graphicx}
\usepackage{color}
\usepackage{ulem}
\usepackage{bm}
\textwidth=6.5in\textheight=9.5in
\oddsidemargin=0in
\topmargin=-.7in
\headheight=0in
\headsep=0.25in
\topskip=0.0in
\pagestyle{empty}
\setcounter{page}{1}
\renewcommand{\thepage}{Mendoza et al, Figure No. \arabic{page}}
\begin{document}
\begin{figure}
\begin{center}
\includegraphics[scale=1]{$FILE.$N}
\end{center}
\end{figure}
\end{document}
" > fig.tex
            latex fig.tex
            dvipdf fig "$FILE".pdf
            pdfcrop "$FILE".pdf "$FILE".pdf
            pdftops -eps "$FILE".pdf
            rm "$FILE".mp   "$FILE".mpx   "$FILE".log   "$FILE"."$N"   fig.*   "$FILE".eps
            N=$[$N + 1]
    done

done


gpinsets=( dsp-alt   dsp-up   eta-alt_x   eta-up_x   shg-vnl-alt   shg-vnl-up )
# gpinsets=( dsp-alt )

node=( 4.7,0.5    4.7,0.5    4.7,0.1    4.7,0.07   5.2,2    5.1,2 )
widhts=( 0.3   0.3   0.22   0.21   0.25   0.25 )
stc=( altinset    upinset    altinset    upinset    altinset    upinset )


for (( i = 0; i < 6; i++ )); do
echo "
\documentclass{article}
\usepackage{eso-pic}
\usepackage{color,graphicx}
\usepackage{tikz}
\pagestyle{empty}
\begin{document}
\thispagestyle{empty}
\begin{figure}
\centering
\begin{tikzpicture}
\node at (1,1) {\includegraphics[width=1\linewidth]{${gpinsets[$i]}}};
\node at (${node[$i]}) {\includegraphics[width=${widhts[$i]}\linewidth]{images/${stc[$i]}}};
\end{tikzpicture}
\end{figure}
\end{document}
" > insetfig.tex
pdflatex insetfig.tex 
pdfcrop insetfig.pdf insetfig.pdf
mv insetfig.pdf ${gpinsets[$i]}.pdf
rm insetfig.log insetfig.tex insetfig.aux
done

cd ..
./sentPSS.sh
