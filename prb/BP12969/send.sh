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
    cp ${NAME}.bbl $TARGET
    cp plots/fig1.pdf $TARGET
    cp plots/fig2-eps-converted-to.pdf $TARGET/fig2.pdf
    cp plots/fig3-eps-converted-to.pdf $TARGET/fig3.pdf
    cp plots/fig4-eps-converted-to.pdf $TARGET/fig4.pdf
    cp plots/fig5-eps-converted-to.pdf $TARGET/fig5.pdf
    cp plots/fig6-eps-converted-to.pdf $TARGET/fig6.pdf
    cp plots/fig7-eps-converted-to.pdf $TARGET/fig7.pdf
    cp plots/fig8-eps-converted-to.pdf $TARGET/fig8.pdf
    sed -i '' 's/plots\/fig/fig/g' ${TARGET}/${MAIN}
    #sed -i '' '/\\bibliography/d' ${TARGET}/${MAIN}
}

function clean {
    rm ${NAME}.aux
    rm ${NAME}.bbl
    rm ${NAME}.blg
    rm ${NAME}.brf
    rm ${NAME}.log
    rm ${NAME}.out
}

if [ -n "$1" ]; then
    compile
    prepare
    clean
else
    echo "Specify target directory."
    exit 1
fi
