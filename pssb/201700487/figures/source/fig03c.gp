set terminal mp color solid latex 11
set lt 1 lc rgb 'black'
set output "fig.mp"

set size 1,0.8
#
L=135
Ls=106.88
f=(L/Ls)
pf=2*(.052918/197.33)*Ls
I={0,1}
chis(x,y)=f*(x+I*y)
chib(x,y)=x+I*y
R(w,x1,y1,x2,y2)=pf*w*imag(chis(x1,y1)/chib(x2,y2))
DR(w,x1,y1,x2,y2,xb,yb)=R(w,x1,y1,xb,yb)-R(w,x2,y2,xb,yb)

per=1e4

unset key

set xlabel '\Large Atom position'
set ylabel '\Large $\Delta R\, (10^{-4})$' #offset -.6,1
set xrange [0:20]
set yrange [-8:2]
set xtics ('H$_1$' 1,'Si$_3$' 3,'Si$_5$' 5,'Si$_7$' 7,'Si$_9$' 9,'Si$_{11}$' 11,'Si$_{13}$' 13,'Si$_{15}$' 15,'Si$_{17}$' 17,'Si$_{19}$' 19)
set ytics 2
        
set label 1 '$\hbar\omega$=2.6\,eV' at graph 0.05,0.9
set label 2 '$\uparrow$ 30\%' at graph 0.5,0.08
set label 3 '$\downarrow$ 5\%' at graph 0.5,0.9
set label 4 '\large up' at graph 0.05,0.2

p 'data/w-fix/up-odd-w-2.60343-p-5.d'  u ($1+($1-1)):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '5\%',\
  'data/w-fix/up-odd-w-2.60343-p-10.d' u ($1+($1-1)):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '10\%',\
  'data/w-fix/up-odd-w-2.60343-p-15.d' u ($1+($1-1)):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '15\%',\
  'data/w-fix/up-odd-w-2.60343-p-20.d' u ($1+($1-1)):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '20\%',\
  'data/w-fix/up-odd-w-2.60343-p-25.d' u ($1+($1-1)):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '25\%',\
  'data/w-fix/up-odd-w-2.60343-p-30.d' u ($1+($1-1)):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '30\%'
