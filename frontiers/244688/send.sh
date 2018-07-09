#!/bin/bash

MAIN="manuscript.tex"
TARGET="$1"
NAME=`basename $MAIN .tex`

function compile {
    pdflatex $MAIN
    pdflatex $MAIN
}

function prepare {
    mkdir -p $TARGET
    cp $MAIN $TARGET
    cp figures/fig1.png $TARGET
    cp figures/fig2.pdf $TARGET
    cp figures/fig3.pdf $TARGET
    cp figures/fig4.pdf $TARGET
    sed -i '' -e 's/figures\/fig/fig/g' ${TARGET}/${MAIN}
}

function clean {
    rm -f ${NAME}.aux
    rm -f ${NAME}.log
    rm -f ${NAME}.out
}

if [ -n "$1" ]; then
    compile
    prepare
    clean
else
    echo "Specify target directory."
    exit 1
fi
