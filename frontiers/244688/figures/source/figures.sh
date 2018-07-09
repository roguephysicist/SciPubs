#!/bin/bash

function plotex() {
    local tex=(`grep "set output" $1 | grep -v '\#' | awk -F\' '{print $(NF-1)}'`)
    gnuplot $1
    for file in ${tex[@]}; do
        local name=`basename $file .tex`
        epstopdf ${name}-inc.eps
        pdflatex $file
        rm -f $name-inc.eps $name-inc.pdf $name.aux $name.log $file
    done
    clear
}

## FIG1
# pdflatex fig1.tex
# pdftoppm -rx 300 -ry 300 -png fig1.pdf fig1
# rm -f fig1.log fig1.aux
# mv fig1-1.png ../fig1.png


## FIG2
plotex fig2.gp
mv fig2.pdf ../

## FIG3
plotex fig3.gp
mv fig3.pdf ../

## FIG4
plotex fig4.gp
mv fig4.pdf ../

# ## FIG4
# printf '\\documentclass[12pt]{article}\n\\usepackage{amsfonts,amsmath,mathrsfs}\n\\usepackage{graphicx,color}\n\\usepackage{ulem}\n\\usepackage{bm}\n\\textwidth=6.5in\n\\textheight=9.5in\n\\oddsidemargin=0in\n\\topmargin=-.7in\n\\headheight=0in\n\\headsep=0.25in\n\\topskip=0.0in\n\\pagestyle{empty}\n\\begin{document}\n\\begin{figure}\n\\begin{center}\n\\includegraphics[scale=1]{fig.0}\n\\end{center}\n\\end{figure}\n\\end{document}\n' > latex.tex
# gnuplot fig4.gp
# mpost --tex=latex fig.mp
# latex latex.tex
# dvips -E -o fig4.eps latex
# epstopdf fig4.eps
# mv fig4.pdf ../
# rm latex.* fig.{0,log,mp,mpx} fig4.eps
