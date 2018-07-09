set terminal epslatex leveldefault color blacktext dashlength 1.0 linewidth 1.0 butt noclip nobackground palfuncparam 2000,0.003 standalone "" 11  fontscale 1.0 size 5in,5in

fhs='../data/res/shgC.sm_0.075_xxz_576_half-slab_12-nospin_scissor_0.70_Nc_103'
f01='../data/res-layers/shgC.sm_0.075_xxz_576_1_12-nospin_scissor_0.70_Nc_103'
f02_03="<paste ../data/res-layers/shgC.sm_0.075_xxz_576_2_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_3_12-nospin_scissor_0.70_Nc_103"
f16_17="<paste ../data/res-layers/shgC.sm_0.075_xxz_576_16_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_17_12-nospin_scissor_0.70_Nc_103"
f24_25="<paste ../data/res-layers/shgC.sm_0.075_xxz_576_24_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_25_12-nospin_scissor_0.70_Nc_103"

set ls 1 lc rgb 'black' lw 2 dt 1
set zeroaxis ls 1
set border lw 2

set output 'fig2.tex'
set multiplot layout 2,1

set xrange [2:14]
set ytics format '% g'
set ytics 0.2
set lmargin at screen 0.13

TOP = 0.96
DIV = 0.42
BRK = 0.01

set tmargin at screen TOP
set bmargin at screen TOP-DIV+BRK
set key top left Left width -3 invert
set ylabel '\large Im$[\chi^{xxz}](10^6\times\mathrm{pm}^2/\mathrm{V})$' offset screen 0.02,0
set yrange [-0.15:0.6]
set xtics format ''
p f24_25 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{24} + z_{25}$)' lw 4 dt 1 lc rgb 'red' w l,\
  f02_03 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{02} + z_{03}$)' lw 4 dt 1 lc rgb 'blue' w l,\
  f01    u (2*$1):($3+$5)        t 'H ($z_1$)'              lw 4 dt 2 lc rgb 'dark-green' w l


set tmargin at screen TOP-DIV-BRK
set bmargin at screen TOP-2*DIV
# set key bottom left maxrows 2 samplen 3
set key bottom left samplen 3 noinvert
set xlabel '\Large Two-photon energy (eV)'
# set ylabel '\Large Im$[\chi^{xxz}](10^6\times\mathrm{pm}^2/\mathrm{V})$' offset screen 0.03,0.2
set ylabel '\large Im$[\chi^{xxz}](10^6\times\mathrm{pm}^2/\mathrm{V})$' offset screen 0.02,0
set yrange [-0.4:0.4]
set xtics format '% g' 
p f02_03 u (2*$1):($3+$5)  t 'Si ($z_{02}$)' lw 4 dt 6 lc rgb 'blue' w l,\
  f02_03 u (2*$1):($8+$10) t 'Si ($z_{03}$)' lw 4 dt 3 lc rgb 'blue' w l,\
  f24_25 u (2*$1):($3+$5)  t 'Si ($z_{24}$)' lw 4 dt 2 lc rgb 'red' w l,\
  f24_25 u (2*$1):($8+$10) t 'Si ($z_{25}$)' lw 4 dt 4 lc rgb 'red' w l

unset multiplot

# EOF
