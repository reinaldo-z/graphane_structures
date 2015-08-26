#!/bin/bash
printf '\\documentclass[12pt]{article}\n\\usepackage{amsfonts,amsmath,mathrsfs}\n\\usepackage{graphicx,color}\n\\usepackage{ulem}\n\\usepackage{bm}\n\\textwidth=6.5in\n\\textheight=9.5in\n\\oddsidemargin=0in\n\\topmargin=-.7in\n\\headheight=0in\n\\headsep=0.25in\n\\topskip=0.0in\n\\pagestyle{empty}\n\\begin{document}\n\\begin{figure}\n\\begin{center}\n\\includegraphics[scale=1]{fig.0}\n\\end{center}\n\\end{figure}\n\\end{document}\n' > latex.tex

gnuplot shg-vnl-alt-comp.gp
mpost --tex=latex shg-vnl-alt-comp-xxx.mp
mpost --tex=latex shg-vnl-alt-comp-xxy.mp
mpost --tex=latex shg-vnl-alt-comp-xxz.mp
mpost --tex=latex shg-vnl-alt-comp-xyy.mp
mpost --tex=latex shg-vnl-alt-comp-xyz.mp
mpost --tex=latex shg-vnl-alt-comp-xzz.mp
mpost --tex=latex shg-vnl-alt-comp-yxx.mp
mpost --tex=latex shg-vnl-alt-comp-yxy.mp
mpost --tex=latex shg-vnl-alt-comp-yxz.mp
mpost --tex=latex shg-vnl-alt-comp-yyy.mp
mpost --tex=latex shg-vnl-alt-comp-yyz.mp
mpost --tex=latex shg-vnl-alt-comp-yzz.mp

mv shg-vnl-alt-comp-xxx.0 fig.0
latex latex.tex
dvips -E -o shg-vnl-alt-comp-xxx.eps latex

mv shg-vnl-alt-comp-xxy.1 fig.0
latex latex.tex
dvips -E -o shg-vnl-alt-comp-xxy.eps latex

mv shg-vnl-alt-comp-xxz.2 fig.0
latex latex.tex
dvips -E -o shg-vnl-alt-comp-xxz.eps latex

mv shg-vnl-alt-comp-xyy.3 fig.0
latex latex.tex
dvips -E -o shg-vnl-alt-comp-xyy.eps latex

mv shg-vnl-alt-comp-xyz.4 fig.0
latex latex.tex
dvips -E -o shg-vnl-alt-comp-xyz.eps latex

mv shg-vnl-alt-comp-xzz.5 fig.0
latex latex.tex
dvips -E -o shg-vnl-alt-comp-xzz.eps latex

mv shg-vnl-alt-comp-yxx.6 fig.0
latex latex.tex
dvips -E -o shg-vnl-alt-comp-yxx.eps latex

mv shg-vnl-alt-comp-yxy.7 fig.0
latex latex.tex
dvips -E -o shg-vnl-alt-comp-yxy.eps latex

mv shg-vnl-alt-comp-yxz.8 fig.0
latex latex.tex
dvips -E -o shg-vnl-alt-comp-yxz.eps latex

mv shg-vnl-alt-comp-yyy.9 fig.0
latex latex.tex
dvips -E -o shg-vnl-alt-comp-yyy.eps latex

mv shg-vnl-alt-comp-yyz.10 fig.0
latex latex.tex
dvips -E -o shg-vnl-alt-comp-yyz.eps latex

mv shg-vnl-alt-comp-yzz.11 fig.0
latex latex.tex
dvips -E -o shg-vnl-alt-comp-yzz.eps latex

gnuplot shg-vnl-up-comp.gp
mpost --tex=latex shg-vnl-up-comp-xxx.mp
mpost --tex=latex shg-vnl-up-comp-xxy.mp
mpost --tex=latex shg-vnl-up-comp-xxz.mp
mpost --tex=latex shg-vnl-up-comp-xyy.mp
mpost --tex=latex shg-vnl-up-comp-xyz.mp
mpost --tex=latex shg-vnl-up-comp-xzz.mp
mpost --tex=latex shg-vnl-up-comp-yxx.mp
mpost --tex=latex shg-vnl-up-comp-yxy.mp
mpost --tex=latex shg-vnl-up-comp-yxz.mp
mpost --tex=latex shg-vnl-up-comp-yyy.mp
mpost --tex=latex shg-vnl-up-comp-yyz.mp
mpost --tex=latex shg-vnl-up-comp-yzz.mp

mv shg-vnl-up-comp-xxx.0 fig.0
latex latex.tex
dvips -E -o shg-vnl-up-comp-xxx.eps latex

mv shg-vnl-up-comp-xxy.1 fig.0
latex latex.tex
dvips -E -o shg-vnl-up-comp-xxy.eps latex

mv shg-vnl-up-comp-xxz.2 fig.0
latex latex.tex
dvips -E -o shg-vnl-up-comp-xxz.eps latex

mv shg-vnl-up-comp-xyy.3 fig.0
latex latex.tex
dvips -E -o shg-vnl-up-comp-xyy.eps latex

mv shg-vnl-up-comp-xyz.4 fig.0
latex latex.tex
dvips -E -o shg-vnl-up-comp-xyz.eps latex

mv shg-vnl-up-comp-xzz.5 fig.0
latex latex.tex
dvips -E -o shg-vnl-up-comp-xzz.eps latex

mv shg-vnl-up-comp-yxx.6 fig.0
latex latex.tex
dvips -E -o shg-vnl-up-comp-yxx.eps latex

mv shg-vnl-up-comp-yxy.7 fig.0
latex latex.tex
dvips -E -o shg-vnl-up-comp-yxy.eps latex

mv shg-vnl-up-comp-yxz.8 fig.0
latex latex.tex
dvips -E -o shg-vnl-up-comp-yxz.eps latex

mv shg-vnl-up-comp-yyy.9 fig.0
latex latex.tex
dvips -E -o shg-vnl-up-comp-yyy.eps latex

mv shg-vnl-up-comp-yyz.10 fig.0
latex latex.tex
dvips -E -o shg-vnl-up-comp-yyz.eps latex

mv shg-vnl-up-comp-yzz.11 fig.0
latex latex.tex
dvips -E -o shg-vnl-up-comp-yzz.eps latex

rm *.tex *.mp* *.log *.dvi fig.0 *.aux
