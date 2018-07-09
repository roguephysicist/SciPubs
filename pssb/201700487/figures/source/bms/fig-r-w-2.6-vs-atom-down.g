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
set label 1 'down @ $\hbar\omega$=2.6\,eV' at graph .05,.915
set xtics ('H$_1$' 1,'Si$_3$' 2,'Si$_5$' 3,'Si$_7$' 4,'Si$_9$' 5,'Si$_{11}$' 6,'Si$_{13}$' 7,'Si$_{15}$' 8,'Si$_{17}$' 9,'Si$_{19}$' 10)
set label 2 '$\uparrow$ 30\%' at graph .5,.08
set label 3 '$\downarrow$ 5\%' at graph .5,.9
unset key
set yrange [-16:3]
p '../data/w-fix/down-odd-w-2.60343-p-5.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '5\%',\
  '../data/w-fix/down-odd-w-2.60343-p-10.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '10\%',\
  '../data/w-fix/down-odd-w-2.60343-p-15.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '15\%',\
  '../data/w-fix/down-odd-w-2.60343-p-20.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '20\%',\
  '../data/w-fix/down-odd-w-2.60343-p-25.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '25\%',\
  '../data/w-fix/down-odd-w-2.60343-p-30.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '30\%'
        

set origin 0,1.7


set xlabel '\Large Atom position'
unset label 1
unset key
set ylabel '\Large $\Delta R\, (10^{-4})$' offset -.6,0
set label 2 '$\uparrow$ 30\%' at graph .5,.08
set label 3 '$\downarrow$ 5\%' at graph .5,.93
set yrange [-8:1]
set xtics ('Si$_2$' 1,'Si$_4$' 2,'Si$_6$' 3,'Si$_8$' 4,'Si$_{10}$' 5,'Si$_{12}$' 6,'Si$_{14}$' 7,'Si$_{16}$' 8,'Si$_{18}$' 9)
p  '../data/w-fix/down-even-w-2.60343-p-5.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '5\%',\
  '../data/w-fix/down-even-w-2.60343-p-10.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '10\%',\
  '../data/w-fix/down-even-w-2.60343-p-15.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '15\%',\
  '../data/w-fix/down-even-w-2.60343-p-20.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '20\%',\
  '../data/w-fix/down-even-w-2.60343-p-25.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '25\%',\
  '../data/w-fix/down-even-w-2.60343-p-30.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '30\%'




