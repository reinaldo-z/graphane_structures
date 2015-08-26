#!/bin/bash

printf '\\documentclass[12pt]{article}\n\\usepackage{amsfonts,amsmath,mathrsfs}\n\\usepackage{graphicx,color}\n\\usepackage{ulem}\n\\usepackage{bm}\n\\textwidth=6.5in\n\\textheight=9.5in\n\\oddsidemargin=0in\n\\topmargin=-.7in\n\\headheight=0in\n\\headsep=0.25in\n\\topskip=0.0in\n\\pagestyle{empty}\n\\begin{document}\n\\begin{figure}\n\\begin{center}\n\\includegraphics[scale=1]{fig.0}\n\\end{center}\n\\end{figure}\n\\end{document}\n' > latex.tex

gnuplot dsp-alt.gp
gnuplot eta-alt.gp
gnuplot shg-vnl-alt.gp
mpost --tex=latex dsp-alt.mp
mpost --tex=latex eta-alt_x.mp
mpost --tex=latex eta-alt_y.mp
mpost --tex=latex eta-alt_z.mp
mpost --tex=latex shg-vnl-alt-x.mp
mpost --tex=latex shg-vnl-alt-y.mp

mv dsp-alt.0 fig.0
latex latex.tex dsp-alt.eps
dvips -E -o dsp-alt.eps latex

mv eta-alt_x.0 fig.0
latex latex.tex
dvips -E -o eta-alt_x.eps latex

mv eta-alt_y.1 fig.0
latex latex.tex
dvips -E -o eta-alt_y.eps latex

mv eta-alt_z.2 fig.0
latex latex.tex
dvips -E -o eta-alt_z.eps latex

mv shg-vnl-alt-x.0 fig.0
latex latex.tex
dvips -E -o shg-vnl-alt-x.eps latex

mv shg-vnl-alt-y.1 fig.0
latex latex.tex
dvips -E -o shg-vnl-alt-y.eps latex

gnuplot dsp-up.gp
gnuplot eta-up.gp
gnuplot shg-vnl-up.gp
mpost --tex=latex dsp-up.mp
mpost --tex=latex eta-up_x.mp
mpost --tex=latex eta-up_y.mp
mpost --tex=latex eta-up_z.mp
mpost --tex=latex shg-vnl-up-x.mp
mpost --tex=latex shg-vnl-up-y.mp

mv dsp-up.0 fig.0
latex latex.tex dsp-up.eps
dvips -E -o dsp-up.eps latex

mv eta-up_x.0 fig.0
latex latex.tex
dvips -E -o eta-up_x.eps latex

mv eta-up_y.1 fig.0
latex latex.tex
dvips -E -o eta-up_y.eps latex

mv eta-up_z.2 fig.0
latex latex.tex
dvips -E -o eta-up_z.eps latex

mv shg-vnl-up-x.0 fig.0
latex latex.tex
dvips -E -o shg-vnl-up-x.eps latex

mv shg-vnl-up-y.1 fig.0
latex latex.tex
dvips -E -o shg-vnl-up-y.eps latex

rm *.tex *.mp* *.log *.dvi fig.0 *.aux
