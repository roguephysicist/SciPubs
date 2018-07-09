set terminal epslatex leveldefault color blacktext dashlength 1.0 linewidth 1.0 butt noclip nobackground palfuncparam 2000,0.003 standalone "" 11  fontscale 1.0 
set output 'fig4.tex'

f1='../data/experiment/mejiaPRB02_bergfeldPRL04.dat'
f2='../data/layered-honesttogod.dat'
f3='../data/original-novnl-3.6.dat'
f4='../data/layered-scaled.dat'
f5='../data/original-novnl-10.dat'

set border lw 2
set key top left width -5

set ylabel '\Large $\mathcal{R}_{pP}\,(10^{-20} \times \mathrm{cm}^{2}/\mathrm{W})$'
set xlabel '\Large Two-photon energy (eV)'
set yrange [0:2]
set xrange [2.5:5]
set label 1 'Theoretical spectra $\times$ 0.91' at 2.6,1.2
g=.91

p f1 u    1:($2/100) t 'Experiment'                    pt 1 lw 3 lc rgb 'black' w p,\
  f2 u (2*$1):(g*$2) t 'Nominal $z_n$ ($d = 3.6$ nm)'  lc rgb 'blue' lw 4 w l,\
  f4 u (2*$1):(g*$2) t 'Stretched $z_n$ ($d = 10$ nm)' lc rgb 'red'  lw 4 w l,\
  f3 u (2*$1):(g*$2) t 'Average ($d = 3.6$ nm)'        lc rgb 'dark-spring-green' lw 4 dt 6 w l,\
  f5 u (2*$1):(g*$2) t 'Average ($d = 10$ nm)'         lc rgb 'goldenrod'  lw 4 dt 4 w l

# EOF
