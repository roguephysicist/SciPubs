#!/usr/local/Cellar/gnuplot/5.0.5_2/bin/gnuplot -persist
#
#    
#    	G N U P L O T
#    	Version 5.0 patchlevel 5    last modified 2016-10-02
#    
#    	Copyright (C) 1986-1993, 1998, 2004, 2007-2016
#    	Thomas Williams, Colin Kelley and many others
#    
#    	gnuplot home:     http://www.gnuplot.info
#    	faq, bugs, etc:   type "help FAQ"
#    	immediate help:   type "help"  (plot window: hit 'h')
set terminal epslatex leveldefault color blacktext dashlength 1.0 linewidth 1.0 butt noclip nobackground palfuncparam 2000,0.003 standalone "" 11  fontscale 1.0 

set locale "en_US.UTF-8"

set output '48_56.tex'
set xrange [0:10]
set yrange [-0.4:0.4]
set ytics 0.2

f1="<paste ../../data/res-layers/shgC.sm_0.075_xxz_576_24_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_25_12-nospin_scissor_0.70_Nc_103"
f2="<paste ../../data/56layers/shgC.sm_0.075_xxz_514_28_15-nospin_scissor_0.70_Nc_113 ../../data/56layers/shgC.sm_0.075_xxz_514_29_15-nospin_scissor_0.70_Nc_113"

p f1 u 1:($3+$5)  t '23/48 layers' lw 2 w l,\
  f1 u 1:($8+$10) t '24/48 layers' lw 2 w l,\
  f2 u 1:($3+$5)  t '27/56 layers' lw 2 w l,\
  f2 u 1:($8+$10) t '28/56 layers' lw 2 w l
#    EOF
