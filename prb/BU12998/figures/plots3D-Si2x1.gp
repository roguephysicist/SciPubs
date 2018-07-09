#!/usr/local/Cellar/gnuplot/5.0.3/bin/gnuplot -persist
#
#    
#    	G N U P L O T
#    	Version 5.0 patchlevel 3    last modified 2016-02-21 
#    
#    	Copyright (C) 1986-1993, 1998, 2004, 2007-2016
#    	Thomas Williams, Colin Kelley and many others
#    
#    	gnuplot home:     http://www.gnuplot.info
#    	faq, bugs, etc:   type "help FAQ"
#    	immediate help:   type "help"  (plot window: hit 'h')
set terminal epslatex   leveldefault color blacktext butt noclip nobackground \
                        palfuncparam 2000,0.003 standalone "" 11  fontscale 1.0\
                        size 3.5,5 
set locale "en_US.UTF-8"
set output 'fig6.tex'

load 'source/heatmaps/Spectral.plt'
set pm3d map
set palette negative
set tics front
# set grid front

unset key
set xrange [ 0.5: 4.5 ] noreverse nowriteback
set xtics 1
set ytics 45
set ticslevel 0
set cblabel '$\mathcal{R}_{pS}\,(10^{-20} \times \mathrm{cm}^{2}/\mathrm{W})$' offset 1,0 rotate by 270

set multiplot layout 2,1

set yrange [ 0 : 180 ] noreverse nowriteback
set size 1,0.5
set ylabel 'Azimuthal Angle $\phi$ ($^{\circ}$)' offset 1,0
set cbtics 4.0
p 'source/data/Rif-3Dphi.dat' u (2*$2):1:3 w image

unset label
set yrange [ -90 : 90 ]
set size 1,0.54
set xlabel "Two-photon energy (eV)" 
set ylabel 'Angle of incidence $\theta_{0}$ ($^{\circ}$)' offset 1,0
set cbtics 5.0
p 'source/data/Rif-3Dtheta.dat' u (2*$2):1:3 w image

unset multiplot
#    EOF
