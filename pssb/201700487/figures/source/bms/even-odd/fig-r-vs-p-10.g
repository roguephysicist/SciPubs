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

set label 1 '\large up-10\%' at graph .35,.95 
set label 2 '\large odd Si' at graph .05,.1 
set label 3 '\large even Si' at graph .05,.9 
p '<paste ../data/chi1.r ../data/up-10/chi1.01 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '1',\
  '<paste ../data/chi1.r ../data/up-10/chi1.03 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '3',\
  '<paste ../data/chi1.r ../data/up-10/chi1.05 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '5',\
  '<paste ../data/chi1.r ../data/up-10/chi1.07 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '7',\
  '<paste ../data/chi1.r ../data/up-10/chi1.09 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '9',\
  '<paste ../data/chi1.r ../data/up-10/chi1.11 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '11',\
  '<paste ../data/chi1.r ../data/up-10/chi1.13 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '13',\
  '<paste ../data/chi1.r ../data/up-10/chi1.15 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '15',\
  '<paste ../data/chi1.r ../data/up-10/chi1.17 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '17',\
  '<paste ../data/chi1.r ../data/up-10/chi1.19 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '19',\
  '<paste ../data/chi1.r ../data/up-10/chi1.02 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '2',\
  '<paste ../data/chi1.r ../data/up-10/chi1.04 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '4',\
  '<paste ../data/chi1.r ../data/up-10/chi1.06 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '6',\
  '<paste ../data/chi1.r ../data/up-10/chi1.08 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '8',\
  '<paste ../data/chi1.r ../data/up-10/chi1.10 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '10',\
  '<paste ../data/chi1.r ../data/up-10/chi1.12 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '12',\
  '<paste ../data/chi1.r ../data/up-10/chi1.14 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '14',\
  '<paste ../data/chi1.r ../data/up-10/chi1.16 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '16',\
  '<paste ../data/chi1.r ../data/up-10/chi1.18 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '18'

set origin 0,1
set xlabel '\large photon energy (eV)'

set label 1 '\large down-10\%' at graph .35,.95 
set label 2 '\large even Si' at graph .05,.1 
set label 3 '\large odd Si' at graph .05,.9 
p '<paste ../data/chi1.r ../data/down-10/chi1.01 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '1',\
  '<paste ../data/chi1.r ../data/down-10/chi1.03 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '3',\
  '<paste ../data/chi1.r ../data/down-10/chi1.05 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '5',\
  '<paste ../data/chi1.r ../data/down-10/chi1.07 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '7',\
  '<paste ../data/chi1.r ../data/down-10/chi1.09 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '9',\
  '<paste ../data/chi1.r ../data/down-10/chi1.11 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '11',\
  '<paste ../data/chi1.r ../data/down-10/chi1.13 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '13',\
  '<paste ../data/chi1.r ../data/down-10/chi1.15 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '15',\
  '<paste ../data/chi1.r ../data/down-10/chi1.17 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '17',\
  '<paste ../data/chi1.r ../data/down-10/chi1.19 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '19',\
  '<paste ../data/chi1.r ../data/down-10/chi1.02 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '2',\
  '<paste ../data/chi1.r ../data/down-10/chi1.04 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '4',\
  '<paste ../data/chi1.r ../data/down-10/chi1.06 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '6',\
  '<paste ../data/chi1.r ../data/down-10/chi1.08 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '8',\
  '<paste ../data/chi1.r ../data/down-10/chi1.10 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '10',\
  '<paste ../data/chi1.r ../data/down-10/chi1.12 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '12',\
  '<paste ../data/chi1.r ../data/down-10/chi1.14 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '14',\
  '<paste ../data/chi1.r ../data/down-10/chi1.16 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '16',\
  '<paste ../data/chi1.r ../data/down-10/chi1.18 ../data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t '18'
