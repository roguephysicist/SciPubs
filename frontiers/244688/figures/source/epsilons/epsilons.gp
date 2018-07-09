set terminal epslatex leveldefault color blacktext dashlength 1.0 linewidth 1.0 butt noclip nobackground palfuncparam 2000,0.003 standalone "" 11  fontscale 1.0 

# set zeroaxis lw 2
set key top right

set ylabel '\Large Im$[\epsilon]$'
set xlabel '\Large One-photon energy (eV)'
set xrange [0:10]

set yrange [0:40]
set output 'eps_sum-f01-01.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-01.dat' u 1:3 t '$z_{01}$' lw 3 dt 4 w l
set output 'eps_sum-f01-02.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-02.dat' u 1:3 t '$z_{01} - z_{02}$' lw 3 dt 4 w l
set output 'eps_sum-f01-03.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-03.dat' u 1:3 t '$z_{01} - z_{03}$' lw 3 dt 4 w l
set output 'eps_sum-f01-04.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-04.dat' u 1:3 t '$z_{01} - z_{04}$' lw 3 dt 4 w l
set output 'eps_sum-f01-05.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-05.dat' u 1:3 t '$z_{01} - z_{05}$' lw 3 dt 4 w l
set output 'eps_sum-f01-06.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-06.dat' u 1:3 t '$z_{01} - z_{06}$' lw 3 dt 4 w l
set output 'eps_sum-f01-07.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-07.dat' u 1:3 t '$z_{01} - z_{07}$' lw 3 dt 4 w l
set output 'eps_sum-f01-08.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-08.dat' u 1:3 t '$z_{01} - z_{08}$' lw 3 dt 4 w l
set output 'eps_sum-f01-09.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-09.dat' u 1:3 t '$z_{01} - z_{09}$' lw 3 dt 4 w l
set output 'eps_sum-f01-10.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-10.dat' u 1:3 t '$z_{01} - z_{10}$' lw 3 dt 4 w l
set output 'eps_sum-f01-11.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-11.dat' u 1:3 t '$z_{01} - z_{11}$' lw 3 dt 4 w l
set output 'eps_sum-f01-12.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-12.dat' u 1:3 t '$z_{01} - z_{12}$' lw 3 dt 4 w l
set output 'eps_sum-f01-13.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-13.dat' u 1:3 t '$z_{01} - z_{13}$' lw 3 dt 4 w l
set output 'eps_sum-f01-14.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-14.dat' u 1:3 t '$z_{01} - z_{14}$' lw 3 dt 4 w l
set output 'eps_sum-f01-15.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-15.dat' u 1:3 t '$z_{01} - z_{15}$' lw 3 dt 4 w l
set output 'eps_sum-f01-16.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-16.dat' u 1:3 t '$z_{01} - z_{16}$' lw 3 dt 4 w l
set output 'eps_sum-f01-17.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-17.dat' u 1:3 t '$z_{01} - z_{17}$' lw 3 dt 4 w l
set output 'eps_sum-f01-18.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-18.dat' u 1:3 t '$z_{01} - z_{18}$' lw 3 dt 4 w l
set output 'eps_sum-f01-19.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-19.dat' u 1:3 t '$z_{01} - z_{19}$' lw 3 dt 4 w l
set output 'eps_sum-f01-20.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-20.dat' u 1:3 t '$z_{01} - z_{20}$' lw 3 dt 4 w l
set output 'eps_sum-f01-21.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-21.dat' u 1:3 t '$z_{01} - z_{21}$' lw 3 dt 4 w l
set output 'eps_sum-f01-22.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-22.dat' u 1:3 t '$z_{01} - z_{22}$' lw 3 dt 4 w l
set output 'eps_sum-f01-23.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-23.dat' u 1:3 t '$z_{01} - z_{23}$' lw 3 dt 4 w l
set output 'eps_sum-f01-24.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-24.dat' u 1:3 t '$z_{01} - z_{24}$' lw 3 dt 4 w l
set output 'eps_sum-f01-25.tex'
p '../../data/epsilons/epsilons.dat' u 1:3 t 'Half-Slab' lw 3 w l,\
  '../../data/epsilons/epsilons-01-25.dat' u 1:3 t '$z_{01} - z_{25}$' lw 3 dt 4 w l

set yrange [0:2]
set output 'eps-01.tex'
p '../../data/epsilons/epsilons-01.dat' u 1:3 t '$z_{01}$' lw 3 dt 4 w l
set output 'eps-02.tex'
p '../../data/epsilons/epsilons-02.dat' u 1:3 t '$z_{02}$' lw 3 dt 4 w l
set output 'eps-03.tex'
p '../../data/epsilons/epsilons-03.dat' u 1:3 t '$z_{03}$' lw 3 dt 4 w l
set output 'eps-04.tex'
p '../../data/epsilons/epsilons-04.dat' u 1:3 t '$z_{04}$' lw 3 dt 4 w l
set output 'eps-05.tex'
p '../../data/epsilons/epsilons-05.dat' u 1:3 t '$z_{05}$' lw 3 dt 4 w l
set output 'eps-06.tex'
p '../../data/epsilons/epsilons-06.dat' u 1:3 t '$z_{06}$' lw 3 dt 4 w l
set output 'eps-07.tex'
p '../../data/epsilons/epsilons-07.dat' u 1:3 t '$z_{07}$' lw 3 dt 4 w l
set output 'eps-08.tex'
p '../../data/epsilons/epsilons-08.dat' u 1:3 t '$z_{08}$' lw 3 dt 4 w l
set output 'eps-09.tex'
p '../../data/epsilons/epsilons-09.dat' u 1:3 t '$z_{09}$' lw 3 dt 4 w l
set output 'eps-10.tex'
p '../../data/epsilons/epsilons-10.dat' u 1:3 t '$z_{10}$' lw 3 dt 4 w l
set output 'eps-11.tex'
p '../../data/epsilons/epsilons-11.dat' u 1:3 t '$z_{11}$' lw 3 dt 4 w l
set output 'eps-12.tex'
p '../../data/epsilons/epsilons-12.dat' u 1:3 t '$z_{12}$' lw 3 dt 4 w l
set output 'eps-13.tex'
p '../../data/epsilons/epsilons-13.dat' u 1:3 t '$z_{13}$' lw 3 dt 4 w l
set output 'eps-14.tex'
p '../../data/epsilons/epsilons-14.dat' u 1:3 t '$z_{14}$' lw 3 dt 4 w l
set output 'eps-15.tex'
p '../../data/epsilons/epsilons-15.dat' u 1:3 t '$z_{15}$' lw 3 dt 4 w l
set output 'eps-16.tex'
p '../../data/epsilons/epsilons-16.dat' u 1:3 t '$z_{16}$' lw 3 dt 4 w l
set output 'eps-17.tex'
p '../../data/epsilons/epsilons-17.dat' u 1:3 t '$z_{17}$' lw 3 dt 4 w l
set output 'eps-18.tex'
p '../../data/epsilons/epsilons-18.dat' u 1:3 t '$z_{18}$' lw 3 dt 4 w l
set output 'eps-19.tex'
p '../../data/epsilons/epsilons-19.dat' u 1:3 t '$z_{19}$' lw 3 dt 4 w l
set output 'eps-20.tex'
p '../../data/epsilons/epsilons-20.dat' u 1:3 t '$z_{20}$' lw 3 dt 4 w l
set output 'eps-21.tex'
p '../../data/epsilons/epsilons-21.dat' u 1:3 t '$z_{21}$' lw 3 dt 4 w l
set output 'eps-22.tex'
p '../../data/epsilons/epsilons-22.dat' u 1:3 t '$z_{22}$' lw 3 dt 4 w l
set output 'eps-23.tex'
p '../../data/epsilons/epsilons-23.dat' u 1:3 t '$z_{23}$' lw 3 dt 4 w l
set output 'eps-24.tex'
p '../../data/epsilons/epsilons-24.dat' u 1:3 t '$z_{24}$' lw 3 dt 4 w l
set output 'eps-25.tex'
p '../../data/epsilons/epsilons-25.dat' u 1:3 t '$z_{25}$' lw 3 dt 4 w l

# EOF
