set terminal mp color solid latex 11
#set terminal mp color latex 11
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
f=(L/Ls)
pf=2*(.052918/197.33)*Ls
I={0,1}
chis(x,y)=f*(x+I*y)
chib(x,y)=x+I*y
R(w,x1,y1,x2,y2)=pf*w*imag(chis(x1,y1)/chib(x2,y2))
DR(w,x1,y1,x2,y2,xb,yb)=R(w,x1,y1,xb,yb)-R(w,x2,y2,xb,yb)

#
#set yrange [-.1:0.35]
set ylabel '\Large $\Delta R\, (10^{-4})$' #offset -.6,1
per=1e4
        
set origin 0,2.35
set label 1 '$\hbar\omega$=2.6\,eV' at graph .05,.915
set label 4 '\large up' at graph .05,.3
set xtics ('H$_1$' 1,'Si$_3$' 3,'Si$_5$' 5,'Si$_7$' 7,'Si$_9$' 9,'Si$_{11}$' 11,'Si$_{13}$' 13,'Si$_{15}$' 15,'Si$_{17}$' 17,'Si$_{19}$' 19)
set label 2 '$\uparrow$ 30\%' at graph .5,.08
set label 3 '$\downarrow$ 5\%' at graph .5,.85
unset key
set yrange [-8:2]
set xrange [0:20]
p '../data/w-fix/up-odd-w-2.60343-p-5.d' u ($1+($1-1)):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '5\%',\
  '../data/w-fix/up-odd-w-2.60343-p-10.d' u ($1+($1-1)):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '10\%',\
  '../data/w-fix/up-odd-w-2.60343-p-15.d' u ($1+($1-1)):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '15\%',\
  '../data/w-fix/up-odd-w-2.60343-p-20.d' u ($1+($1-1)):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '20\%',\
  '../data/w-fix/up-odd-w-2.60343-p-25.d' u ($1+($1-1)):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '25\%',\
  '../data/w-fix/up-odd-w-2.60343-p-30.d' u ($1+($1-1)):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '30\%'
        

set origin 0,1.7


set xlabel '\Large Atom position'
unset label 1
unset key
set ylabel '\Large $\Delta R\, (10^{-4})$' offset -.6,0
set label 2 '$\uparrow$ 30\%' at graph .5,.08
set label 3 '$\downarrow$ 5\%' at graph .5,.93
set label 4 '\large down' at graph .05,.2
set yrange [-8:2]
set xrange [0:20]
set xtics ('Si$_2$' 2,'Si$_4$' 4,'Si$_6$' 6,'Si$_8$' 8,'Si$_{10}$' 10,'Si$_{12}$' 12,'Si$_{14}$' 14,'Si$_{16}$' 16,'Si$_{18}$' 18)
p  '../data/w-fix/down-even-w-2.60343-p-5.d' u (2*$1):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '5\%',\
  '../data/w-fix/down-even-w-2.60343-p-10.d' u (2*$1):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '10\%',\
  '../data/w-fix/down-even-w-2.60343-p-15.d' u (2*$1):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '15\%',\
  '../data/w-fix/down-even-w-2.60343-p-20.d' u (2*$1):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '20\%',\
  '../data/w-fix/down-even-w-2.60343-p-25.d' u (2*$1):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '25\%',\
  '../data/w-fix/down-even-w-2.60343-p-30.d' u (2*$1):(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '30\%'




