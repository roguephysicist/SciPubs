#!/bin/bash

MAIN="manuscript.tex"
TARGET="$1"
NAME=`basename $MAIN .tex`

function compile {
    pdflatex $MAIN
    bibtex ${NAME}.aux
    pdflatex $MAIN
    pdflatex $MAIN
}

function prepare {
    mkdir -p $TARGET
    cp $MAIN $TARGET
    cp figures/fig1.pdf $TARGET
    cp figures/fig2.pdf $TARGET
    cp figures/fig3-eps-converted-to.pdf $TARGET/fig3.pdf
    cp figures/fig4-eps-converted-to.pdf $TARGET/fig4.pdf
    cp figures/fig5-eps-converted-to.pdf $TARGET/fig5.pdf
    cp figures/fig6.pdf $TARGET
    cp figures/fig7-eps-converted-to.pdf $TARGET/fig7.pdf
    cp figures/fig8-eps-converted-to.pdf $TARGET/fig8.pdf
    sed -i '' -e 's/figures\/fig/fig/g' -e '/\\bibliography{ref}/d' -e '/\\end{document}/d' ${TARGET}/${MAIN}
    cat ${NAME}.bbl >> ${TARGET}/${MAIN}
    printf '\\end{document}' >> ${TARGET}/${MAIN}
}

function clean {
    rm -f ${NAME}.aux
    rm -f ${NAME}.bbl
    rm -f ${NAME}.blg
    rm -f ${NAME}.brf
    rm -f ${NAME}.log
    rm -f ${NAME}.out
    rm -f ${NAME}Notes.bib
}

if [ -n "$1" ]; then
    compile
    prepare
    clean
else
    echo "Specify target directory."
    exit 1
fi
