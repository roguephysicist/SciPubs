set terminal mp color solid latex 11
set output "fig.mp"
#
set multiplot
set lmargin 10
#
#L=135
#Ls=106.88
#f=(L/Ls)
#I={0,1}
#eps(x,y)=1 + 4*pi*f*(x+I*y)
#n(x,y)=sqrt(eps(x,y))
#R(x,y)=(abs( ( n(x,y)-1 )/( n(x,y)+1 )))**2
#DR(x1,y1,x2,y2)=R(x1,y1)-R(x2,y2)
#
L=135
Ls=106.88
f=(L/Ls)
pf=2*(52.918/197.33)*Ls
I={0,1}
chis(x,y)=f*(x+I*y)
chib(x,y)=x+I*y
R(w,x1,y1,x2,y2)=pf*w*imag(chis(x1,y1)/chib(x2,y2))
DR(w,x1,y1,x2,y2,xb,yb)=R(w,x1,y1,xb,yb)-R(w,x2,y2,xb,yb)
#
set xrange [1.65:2.75]
set ylabel '\Large $\Delta R$ (\%)'
per=100
set origin 0,2

set label 1 '\large up-5\%' at graph .05,.93 
set label 2 '\large even Si' at graph .8,.75 
set label 3 '\large odd Si' at graph .6,.5 
set key at graph .23,.6
set yrange [-25:3]
p '<paste ../data/chi1.r ../data/up-5/chi1.02 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_2$',\
  '<paste ../data/chi1.r ../data/up-5/chi1.10 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{10}$',\
  '<paste ../data/chi1.r ../data/up-5/chi1.18 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{18}$',\
  '<paste ../data/chi1.r ../data/up-5/chi1.05 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{5}$',\
  '<paste ../data/chi1.r ../data/up-5/chi1.11 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{11}$',\
  '<paste ../data/chi1.r ../data/up-5/chi1.19 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{19}$'

set origin 0,1.05
set xlabel '\Large $\hbar\omega$ (eV)'

set label 1 '\large down-5\%' at graph .05,.95 
set label 2 '\large even Si' at graph .8,.8 
set label 3 '\large odd Si' at graph .6,.6 
set yrange [-40:5]
p '<paste ../data/chi1.r ../data/down-5/chi1.02 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_2$',\
  '<paste ../data/chi1.r ../data/down-5/chi1.10 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{10}$',\
  '<paste ../data/chi1.r ../data/down-5/chi1.18 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{18}$',\
  '<paste ../data/chi1.r ../data/down-5/chi1.05 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{5}$',\
  '<paste ../data/chi1.r ../data/down-5/chi1.11 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{11}$',\
  '<paste ../data/chi1.r ../data/down-5/chi1.19 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{19}$'
