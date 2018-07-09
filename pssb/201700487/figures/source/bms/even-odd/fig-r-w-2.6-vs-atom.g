#set terminal mp color solid latex 11
set terminal mp color latex 11
set output "fig.mp"
#
set multiplot

#set tmargin 0
set bmargin 1.5
set lmargin 10
#set rmargin 1

set size 1,.7
#
L=135
Ls=106.88
f=(L/Ls)/2
I={0,1}
eps(x,y)=1 + 4*pi*f*(x+I*y)
n(x,y)=sqrt(eps(x,y))
R(x,y)=(abs( ( n(x,y)-1 )/( n(x,y)+1 )))**2
DR(x1,y1,x2,y2)=R(x1,y1)-R(x2,y2)
#
#set yrange [-.1:0.35]
set ylabel '\Large $\Delta R$ (\%)'
per=100
#set label 1 ''
set origin 0,3
set xtics ('H' 1,'Si$_3$' 2,'Si$_5$' 3,'Si$_7$' 4,'Si$_9$' 5,'Si$_{11}$' 6,'Si$_{13}$' 7,'Si$_{15}$' 8,'Si$_{17}$' 9,'Si$_{19}$' 10)
set label 1 'down-odd @ 2.6 eV' at graph .05,.9 
p '../data/w-fix/down-odd-w-2.60343-p-1.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '1\%',\
  '../data/w-fix/down-odd-w-2.60343-p-2.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '2\%',\
  '../data/w-fix/down-odd-w-2.60343-p-3.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '3\%',\
  '../data/w-fix/down-odd-w-2.60343-p-4.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '4\%',\
  '../data/w-fix/down-odd-w-2.60343-p-5.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '5\%',\
  '../data/w-fix/down-odd-w-2.60343-p-6.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '6\%',\
  '../data/w-fix/down-odd-w-2.60343-p-7.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '7\%',\
  '../data/w-fix/down-odd-w-2.60343-p-8.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '8\%',\
  '../data/w-fix/down-odd-w-2.60343-p-9.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '9\%',\
  '../data/w-fix/down-odd-w-2.60343-p-10.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '10\%'


set origin 0,2.35

set label 1 'up-even'  at graph .05,.9 
set xtics ('Si$_2$' 1,'Si$_4$' 2,'Si$_6$' 3,'Si$_8$' 4,'Si$_{10}$' 5,'Si$_{12}$' 6,'Si$_{14}$' 7,'Si$_{16}$' 8,'Si$_{18}$' 9)
p  '../data/w-fix/up-even-w-2.60343-p-1.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '1\%',\
  '../data/w-fix/up-even-w-2.60343-p-2.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '2\%',\
  '../data/w-fix/up-even-w-2.60343-p-3.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '3\%',\
  '../data/w-fix/up-even-w-2.60343-p-4.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '4\%',\
  '../data/w-fix/up-even-w-2.60343-p-5.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '5\%',\
  '../data/w-fix/up-even-w-2.60343-p-6.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '6\%',\
  '../data/w-fix/up-even-w-2.60343-p-7.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '7\%',\
  '../data/w-fix/up-even-w-2.60343-p-8.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '8\%',\
  '../data/w-fix/up-even-w-2.60343-p-9.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '9\%',\
  '../data/w-fix/up-even-w-2.60343-p-10.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '10\%'

set origin 0,1.7


set label 1 'down-even' at graph .05,.9 
set xtics ('Si$_2$' 1,'Si$_4$' 2,'Si$_6$' 3,'Si$_8$' 4,'Si$_{10}$' 5,'Si$_{12}$' 6,'Si$_{14}$' 7,'Si$_{16}$' 8,'Si$_{18}$' 9)
p  '../data/w-fix/down-even-w-2.60343-p-1.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '1\%',\
  '../data/w-fix/down-even-w-2.60343-p-2.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '2\%',\
  '../data/w-fix/down-even-w-2.60343-p-3.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '3\%',\
  '../data/w-fix/down-even-w-2.60343-p-4.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '4\%',\
  '../data/w-fix/down-even-w-2.60343-p-5.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '5\%',\
  '../data/w-fix/down-even-w-2.60343-p-6.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '6\%',\
  '../data/w-fix/down-even-w-2.60343-p-7.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '7\%',\
  '../data/w-fix/down-even-w-2.60343-p-8.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '8\%',\
  '../data/w-fix/down-even-w-2.60343-p-9.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '9\%',\
  '../data/w-fix/down-even-w-2.60343-p-10.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '10\%'

set origin 0,1.05

set xlabel '\Large Atom $z$-number (1-H 2$\ldots$i)'

set label 1 'up-odd' at graph .05,.9 
set xtics ('H' 1,'Si$_3$' 2,'Si$_5$' 3,'Si$_7$' 4,'Si$_9$' 5,'Si$_{11}$' 6,'Si$_{13}$' 7,'Si$_{15}$' 8,'Si$_{17}$' 9,'Si$_{19}$' 10)
p '../data/w-fix/up-odd-w-2.60343-p-1.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '1\%',\
  '../data/w-fix/up-odd-w-2.60343-p-2.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '2\%',\
  '../data/w-fix/up-odd-w-2.60343-p-3.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '3\%',\
  '../data/w-fix/up-odd-w-2.60343-p-4.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '4\%',\
  '../data/w-fix/up-odd-w-2.60343-p-5.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '5\%',\
  '../data/w-fix/up-odd-w-2.60343-p-6.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '6\%',\
  '../data/w-fix/up-odd-w-2.60343-p-7.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '7\%',\
  '../data/w-fix/up-odd-w-2.60343-p-8.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '8\%',\
  '../data/w-fix/up-odd-w-2.60343-p-9.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '9\%',\
  '../data/w-fix/up-odd-w-2.60343-p-10.d' u 1:(per*DR($4,$5,$6,$7)) w lp pt 1 ps .5 t '10\%'




