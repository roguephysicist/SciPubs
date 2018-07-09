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

function mpostex() {
    printf '\\documentclass[12pt]{article}\n\\usepackage{amsfonts,amsmath,mathrsfs}\n\\usepackage{graphicx,color}\n\\usepackage{ulem}\n\\usepackage{bm}\n\\textwidth=6.5in\n\\textheight=9.5in\n\\oddsidemargin=0in\n\\topmargin=-.7in\n\\headheight=0in\n\\headsep=0.25in\n\\topskip=0.0in\n\\pagestyle{empty}\n\\begin{document}\n\\begin{figure}\n\\begin{center}\n\\includegraphics[scale=1]{fig.0}\n\\end{center}\n\\end{figure}\n\\end{document}\n' > latex.tex
    gnuplot $1
    mpost --tex=latex fig.mp
    latex latex.tex
    dvips -E -o ${2}.eps latex
    epstopdf ${2}.eps
    rm latex.* fig.{0,log,mp,mpx} ${2}.eps
}

cp structure.pdf ../fig01.pdf
mpostex fig02.gp  fig02  && mv fig02.pdf ..  # selected-fig-r-vs-p-30.g
mpostex fig03a.gp fig03a && mv fig03a.pdf .. # fig-r-w-2.6-vs-atom-down-odd-up-even.g
mpostex fig03b.gp fig03b && mv fig03b.pdf .. # fig-r-w-2.6-vs-atom-down-odd-up-even.g
mpostex fig03c.gp fig03c && mv fig03c.pdf .. # fig-r-w-2.6-vs-atom-up-odd-down-even.g
mpostex fig03d.gp fig03d && mv fig03d.pdf .. # fig-r-w-2.6-vs-atom-up-odd-down-even.g
mpostex fig04.gp  fig04  && mv fig04.pdf ..  # fig-r-vs-w-atom-down-2.g

# cp structure.pdf ../fig01.pdf
# mpostex selected-fig-r-vs-p-30.g fig02               && mv fig02.pdf ..
# mpostex fig-r-w-2.6-vs-atom-down-odd-up-even.g fig03 && mv fig03.pdf ..
# mpostex fig-r-w-2.6-vs-atom-up-odd-down-even.g fig04 && mv fig04.pdf ..
# mpostex fig-r-vs-w-atom-down-2.g fig05               && mv fig05.pdf ..
