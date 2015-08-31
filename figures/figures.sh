#!/bin/bash

printf '\\documentclass[12pt]{article}\n\\usepackage{amsfonts,amsmath,mathrsfs}\n\\usepackage{graphicx,color}\n\\usepackage{ulem}\n\\usepackage{bm}\n\\textwidth=6.5in\n\\textheight=9.5in\n\\oddsidemargin=0in\n\\topmargin=-.7in\n\\headheight=0in\n\\headsep=0.25in\n\\topskip=0.0in\n\\pagestyle{empty}\n\\begin{document}\n\\begin{figure}\n\\begin{center}\n\\includegraphics[scale=1]{fig.0}\n\\end{center}\n\\end{figure}\n\\end{document}\n' > latex.tex

function metapost {
    counter=0
    targets=($(grep -v '^#' $1| grep 'set output'|awk '{print $3}'))
    for i in "${targets[@]}"; do
        name=`echo $i | tr -d '"'`
        mpost --tex=latex $name
        render $name $counter
        let counter=counter+1
    done
}

function render {
    target="${1%.*}"
    mv ${target}.${2} fig.0
    latex latex.tex
    dvips -E -o ${target}.eps latex
}

gpfiles=( dsp-alt.gp dsp-up.gp eta-alt.gp eta-up.gp shg-vnl-alt.gp shg-vnl-up.gp shg-lay-alt.gp shg-lay-up.gp )
#gpfiles=( shg-vnl-alt.gp shg-vnl-up.gp )

for file in "${gpfiles[@]}"; do
    gnuplot $file
    metapost $file
done

rm *.tex *.mp* *.log *.dvi fig.0 *.aux
