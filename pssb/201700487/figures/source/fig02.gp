set terminal mp color solid latex 11
set lt 1 lc rgb 'black'
set lt 2 lc rgb 'red'
set lt 3 lc rgb 'blue'
set lt 4 lw 1.25 lc rgb 'orange'
set lt 5 lw 1.25 lc rgb 'green'
set lt 6 lw 1.25 lc rgb 'violet'
set output "fig.mp"
#
set multiplot
set lmargin 10
set key Left at graph 0.25,0.6 width -6
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
L=135                     # total height, including vacuum
Ls=106.88                 # slab height, from top to bottom atoms
f=(L/Ls)                  # normalization factor
pf=2*(.052918/197.33)*Ls  # 2*(Ls*0.052918 bohr to nm)/(hbar*c)
I={0,1}                   # Imaginary number
chis(x,y)=f*(x+I*y)       # Surface chi, normalized
chib(x,y)=x+I*y           # Bulk chi
R(w,x1,y1,x2,y2)=pf*w*imag(chis(x1,y1)/chib(x2,y2))
DR(w,x1,y1,x2,y2,xb,yb)=R(w,x1,y1,xb,yb)-R(w,x2,y2,xb,yb)
#
set xrange [1.65:2.75]
set ylabel '\Large $\Delta R\,(10^{-4})$'
per=100
per=1e4
set origin 0,2
set bmargin 3

set label 1 '\large up-30\%' at graph .05,.7 
set label 2 '\large odd Si' at graph .8,.9 
set label 3 '\large even Si' at graph .7,.5 
#set yrange [-25:3]
p '<paste data/chi1.r data/up-30/chi1.04 data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l lw 2 t 'Si$_4$',\
  '<paste data/chi1.r data/up-30/chi1.10 data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l lw 2 t 'Si$_{10}$',\
  '<paste data/chi1.r data/up-30/chi1.18 data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l lw 2 t 'Si$_{18}$',\
  '<paste data/chi1.r data/up-30/chi1.05 data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{5}$',\
  '<paste data/chi1.r data/up-30/chi1.11 data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{11}$',\
  '<paste data/chi1.r data/up-30/chi1.19 data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{19}$'

set origin 0,1.1
set xlabel '\Large $\hbar\omega$ (eV)'

set label 1 '\large down-30\%' at graph .05,.7 
set label 2 '\large even Si' at graph .85,.93 
set label 3 '\large odd Si' at graph .7,.6 
#set yrange [-40:5]
p '<paste data/chi1.r data/down-30/chi1.04 data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l lw 2 t 'Si$_4$',\
  '<paste data/chi1.r data/down-30/chi1.10 data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l lw 2 t 'Si$_{10}$',\
  '<paste data/chi1.r data/down-30/chi1.18 data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l lw 2 t 'Si$_{18}$',\
  '<paste data/chi1.r data/down-30/chi1.05 data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{5}$',\
  '<paste data/chi1.r data/down-30/chi1.11 data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{11}$',\
  '<paste data/chi1.r data/down-30/chi1.19 data/chi1.b' u 1:(per*DR($1,$2,$3,$5,$6,$12,$13)) w l t 'Si$_{19}$'
