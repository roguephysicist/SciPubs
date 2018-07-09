#!/usr/local/Cellar/gnuplot/5.0.3/bin/gnuplot -persist
#
#    
#       G N U P L O T
#       Version 5.0 patchlevel 3    last modified 2016-02-21 
#    
#       Copyright (C) 1986-1993, 1998, 2004, 2007-2016
#       Thomas Williams, Colin Kelley and many others
#    
#       gnuplot home:     http://www.gnuplot.info
#       faq, bugs, etc:   type "help FAQ"
#       immediate help:   type "help"  (plot window: hit 'h')
# set terminal epslatex leveldefault color blacktext standalone "" 11 fontscale 1 size 11,8.5
# set terminal pngcairo dashed nocrop enhanced size 1440,1080 font "Minion Pro,22"
# set output '3Dside01.png'

reset

set size 1,1
set view 34,46, 1, 1
unset border
unset key
unset tics
unset colorbox

set xrange [-30:30]
set yrange [-30:30]
set urange [0:360]
set vrange [0:180]
set ticslevel 0

# line styles
set style line 1 lc rgb '#D53E4F' # red
set style line 2 lc rgb '#F46D43' # orange
set style line 3 lc rgb '#FDAE61' # pale orange
set style line 4 lc rgb '#FEE08B' # pale yellow-orange
set style line 5 lc rgb '#E6F598' # pale yellow-green
set style line 6 lc rgb '#ABDDA4' # pale green
set style line 7 lc rgb '#66C2A5' # green
set style line 8 lc rgb '#3288BD' # blue

# # palette
# set palette defined ( 0 '#D53E4F',\
#                       1 '#D53E4F',\
#                       2 '#D53E4F',\
#                       3 '#D53E4F',\
#                       4 '#F46D43',\
#                       5 '#FDAE61',\
#                       6 '#FEE08B',\
#                       7 '#E6F598',\
#                       8 '#ABDDA4',\
#                       9 '#66C2A5',\
#                      10 '#3288BD' )

# palette
set palette defined ( 1 '#D53E4F',\
                      2 '#F46D43',\
                      3 '#FDAE61',\
                      4 '#FEE08B',\
                      5 '#E6F598',\
                      6 '#ABDDA4',\
                      7 '#66C2A5',\
                      8 '#3288BD' )

set palette negative

set angles degrees
set mapping spherical
# set pm3d depthorder
set parametric
set pm3d depthorder hidden3d lw 0.25
set isosamples 75
set hidden3d front
# set pm3d map

# for grids
p1(phi) = max*cos(phi)
p2(phi) = max*sin(phi)
t1(r,theta) = r*cos(theta)
t2(r,theta) = r*sin(theta)

# # phi grid
set arrow from 0,0,0 to p1(000),p2(000),0 nohead lw 1 dt 2 lc rgb 'black'
set arrow from 0,0,0 to p1( 45),p2( 45),0 nohead lw 1 dt 2 lc rgb 'black'
set arrow from 0,0,0 to p1( 90),p2( 90),0 nohead lw 1 dt 2 lc rgb 'black'
set arrow from 0,0,0 to p1(135),p2(135),0 nohead lw 1 dt 2 lc rgb 'black'
set arrow from 0,0,0 to p1(180),p2(180),0 nohead lw 1 dt 2 lc rgb 'black'
set arrow from 0,0,0 to p1(225),p2(225),0 nohead lw 1 dt 2 lc rgb 'black'
set arrow from 0,0,0 to p1(270),p2(270),0 nohead lw 1 dt 2 lc rgb 'black'
set arrow from 0,0,0 to p1(315),p2(315),0 nohead lw 1 dt 2 lc rgb 'black'
# # angle labels
# set label 'ϕ'    at 0.75*p1(000),0.75*p2(000),-0.1 font ',30' front
set label '0'    at 1.10*p1(000),1.10*p2(000),0
set label 'π/4'  at 1.15*p1( 45),1.10*p2( 45),0
set label 'π/2'  at 1.05*p1( 90),1.05*p2( 90),0
set label '3π/4' at 1.05*p1(135),1.05*p2(135),0
set label 'π'    at 1.10*p1(180),1.10*p2(180),0
set label '5π/4' at 1.15*p1(225),1.15*p2(225),0
set label '3π/2' at 1.15*p1(270),1.15*p2(270),0
set label '7π/4' at 1.15*p1(315),1.15*p2(315),0

# set arrow from 0,0,0 to p1(30),p2(30),0 nohead lw 1 dt 3
# set label 'π/6' at 1.15*p1(30),1.15*p2(30),0

# # theta grid
# set arrow from t1(0.0, 45),0,t2(0.0, 45) to t1(25, 45),0,t2(25, 45) nohead lw 1 dt 2 lc rgb 'black'
# set arrow from t1(0.0, 90),0,t2(0.0, 90) to t1(25, 90),0,t2(25, 90) nohead lw 1 dt 2 lc rgb 'black'
# set arrow from t1(0.0,135),0,t2(0.0,135) to t1(25,135),0,t2(25,135) nohead lw 1 dt 2 lc rgb 'black'
# # angle label
# set label 'θ'    at 0.90*t1(2.5, 90),+0.1,0.90*t2(2.5, 90) font ',30' front
# set label 'π/4'  at 1.15*t1(25, 45),-0.0,1.15*t2(25, 45) front
# set label '0'  at 1.00*t1(25, 90),-0.1,1.08*t2(25, 90) front
# set label '-π/4' at 1.05*t1(25,135),-0.0,1.05*t2(25,135) front

# set arrow from 0,0,0 to t1(65),0,t2(65) nohead lw 1 dt 3
# set label '65' at 1.15*t1(65),0,1.15*t2(65)

# circle
fx(r,x) = r*cos(x)
fy(r,x) = r*sin(x)
fz(r,x) = 0

max = 2.81475933760064e+01

sp 'RpS-E1_0.71eV.dat' u 2:($1+90):3 t '' w pm3d,\
fx(28*0.4843046258380445,u),fy(28*0.4843046258380445,u),fz(28*0.4843046258380445,u) w l lw 1 lc rgb 'black',\
fz(28*0.4843046258380445,v),fx(28*0.4843046258380445,v),fy(28*0.4843046258380445,v) w l lw 1 lc rgb 'black',\
fx(28*0.7939085413255055,u),fy(28*0.7939085413255055,u),fz(28*0.7939085413255055,u) w l lw 1 lc rgb 'black',\
fz(28*0.7939085413255055,v),fx(28*0.7939085413255055,v),fy(28*0.7939085413255055,v) w l lw 1 lc rgb 'black',\
fx(28*0.9516188894421702,u),fy(28*0.9516188894421702,u),fz(28*0.9516188894421702,u) w l lw 1 lc rgb 'black',\
fz(28*0.9516188894421702,v),fx(28*0.9516188894421702,v),fy(28*0.9516188894421702,v) w l lw 1 lc rgb 'black',\
fx(max,u),fy(max,u),fz(max,u) w l lw 1 lc rgb 'black',\
fz(max,v),fx(max,v),fy(max,v) w l lw 1 lc rgb 'black'
# fx(5,u),fy(5,u),fz(5,u) w l lw 1 lc rgb 'black',\
# fx(10,u),fy(10,u),fz(10,u) w l lw 1 lc rgb 'black',\
# fx(15,u),fy(15,u),fz(15,u) w l lw 1 lc rgb 'black',\
# fx(5,v),fz(5,v),fy(5,v) w l lw 1 lc rgb 'black',\
# fx(10,v),fz(10,v),fy(10,v) w l lw 1 lc rgb 'black',\
# fx(15,v),fz(15,v),fy(15,v) w l lw 1 lc rgb 'black',\
