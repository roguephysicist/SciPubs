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
pf=2*(52.918/197.33)*Ls
I={0,1}
chis(x,y)=f*(x+I*y)
chib(x,y)=x+I*y
R(w,x1,y1,x2,y2)=pf*w*imag(chis(x1,y1)/chib(x2,y2))
DR(w,x1,y1,x2,y2,xb,yb)=R(w,x1,y1,xb,yb)-R(w,x2,y2,xb,yb)

#
#set yrange [-.1:0.35]
set ylabel '\Large $\Delta R$ (\%)' #offset -.6,1
per=100
        
set origin 0,2.35
set label 1 'up @ $\hbar\omega$=2.4\,eV' at graph .05,.915
set xtics ('H' 1,'Si$_3$' 2,'Si$_5$' 3,'Si$_7$' 4,'Si$_9$' 5,'Si$_{11}$' 6,'Si$_{13}$' 7,'Si$_{15}$' 8,'Si$_{17}$' 9,'Si$_{19}$' 10)
set label 2 '$\uparrow$ 10\%' at graph .5,.07
set label 3 '$\downarrow$ 1\%' at graph .5,.9
unset key
set yrange [-50:10]
p '../data/w-fix/up-odd-w-2.39483-p-1.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '1\%',\
  '../data/w-fix/up-odd-w-2.39483-p-2.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '2\%',\
  '../data/w-fix/up-odd-w-2.39483-p-3.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '3\%',\
  '../data/w-fix/up-odd-w-2.39483-p-4.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '4\%',\
  '../data/w-fix/up-odd-w-2.39483-p-5.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '5\%',\
  '../data/w-fix/up-odd-w-2.39483-p-6.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '6\%',\
  '../data/w-fix/up-odd-w-2.39483-p-7.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '7\%',\
  '../data/w-fix/up-odd-w-2.39483-p-8.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '8\%',\
  '../data/w-fix/up-odd-w-2.39483-p-9.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '9\%',\
  '../data/w-fix/up-odd-w-2.39483-p-10.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '10\%'
        

set origin 0,1.7


set xlabel '\Large Atom position'
unset label 1
unset key
set ylabel '\Large $\Delta R$ (\%)' offset -.6,0
set label 2 '$\uparrow$ 10\%' at graph .5,.07
set label 3 '$\downarrow$ 1\%' at graph .5,.9
set ylabel '\Large $\Delta R$ (\%)' offset .5,0
set yrange [-3.2:.5]
set xtics ('Si$_2$' 1,'Si$_4$' 2,'Si$_6$' 3,'Si$_8$' 4,'Si$_{10}$' 5,'Si$_{12}$' 6,'Si$_{14}$' 7,'Si$_{16}$' 8,'Si$_{18}$' 9)
p  '../data/w-fix/up-even-w-2.39483-p-1.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '1\%',\
  '../data/w-fix/up-even-w-2.39483-p-2.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '2\%',\
  '../data/w-fix/up-even-w-2.39483-p-3.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '3\%',\
  '../data/w-fix/up-even-w-2.39483-p-4.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '4\%',\
  '../data/w-fix/up-even-w-2.39483-p-5.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '5\%',\
  '../data/w-fix/up-even-w-2.39483-p-6.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '6\%',\
  '../data/w-fix/up-even-w-2.39483-p-7.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '7\%',\
  '../data/w-fix/up-even-w-2.39483-p-8.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '8\%',\
  '../data/w-fix/up-even-w-2.39483-p-9.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '9\%',\
  '../data/w-fix/up-even-w-2.39483-p-10.d' u 1:(per*DR($3,$6,$7,$4,$5,$8,$9)) w lp lt 1  pt 1 ps .5 t '10\%'



