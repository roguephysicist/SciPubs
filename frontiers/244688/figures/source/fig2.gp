set terminal epslatex leveldefault color blacktext dashlength 1.0 linewidth 1.0 butt noclip nobackground palfuncparam 2000,0.003 standalone "" 11  fontscale 1.0 

fhs='../data/res/shgC.sm_0.075_xxz_576_half-slab_12-nospin_scissor_0.70_Nc_103'
f01='../data/res-layers/shgC.sm_0.075_xxz_576_1_12-nospin_scissor_0.70_Nc_103'
f02_03="<paste ../data/res-layers/shgC.sm_0.075_xxz_576_2_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_3_12-nospin_scissor_0.70_Nc_103"
f16_17="<paste ../data/res-layers/shgC.sm_0.075_xxz_576_16_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_17_12-nospin_scissor_0.70_Nc_103"
f24_25="<paste ../data/res-layers/shgC.sm_0.075_xxz_576_24_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_25_12-nospin_scissor_0.70_Nc_103"

set ls 1 lc rgb 'black' lw 2 dt 1

set zeroaxis ls 1
set border lw 2

set xrange [2.5:5]

set output 'fig2.tex'
set multiplot

set key top left Left width -4 invert
set ylabel '\Large Im$[\chi^{xxz}](10^6\times\mathrm{pm}^2/\mathrm{V})$ '
set xlabel '\Large Two-photon energy (eV)'
set yrange [-0.15:0.15]
p f24_25 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{24} + z_{25}$)' lw 4 dt 1 lc rgb 'red' w l,\
  f02_03 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{02} + z_{03}$)' lw 4 dt 1 lc rgb 'blue' w l,\
  f01    u (2*$1):($3+$5)        t 'H ($z_1$)'              lw 4 dt 2 lc rgb 'dark-green' w l

unset xlabel
unset ylabel
unset xtics
unset ytics
# unset key
set key at 2.6,-0.03 width -5 samplen 1.5 noinvert

set origin 0.18,0.11
# set size 0.449,0.375
set size 0.375,0.375
set yrange [-0.1:0.1]
# set label '{Si ($z_{02}$, $z_{03}$)}' at screen 0.36,0.18
p f02_03 u (2*$1):($3+$5)  t '\scriptsize{Si ($z_{02}$)}' lw 3 dt 6 lc rgb 'blue' w l,\
  f02_03 u (2*$1):($8+$10) t '\scriptsize{Si ($z_{03}$)}' lw 3 dt 3 lc rgb 'blue' w l

set origin 0.55,0.11
set size 0.375,0.375
set yrange [-0.1:0.1]
# set label '{Si ($z_{24}$, $z_{25}$)}' at screen 0.73,0.18
p f24_25 u (2*$1):($3+$5)  t '\scriptsize{Si ($z_{24}$)}' lw 3 dt 3 lc rgb 'red' w l,\
  f24_25 u (2*$1):($8+$10) t '\scriptsize{Si ($z_{25}$)}' lw 3 dt 6 lc rgb 'red' w l

unset multiplot

# EOF
