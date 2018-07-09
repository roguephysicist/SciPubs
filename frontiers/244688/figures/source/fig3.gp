set terminal epslatex leveldefault color blacktext dashlength 1.0 linewidth 1.0 butt noclip nobackground palfuncparam 2000,0.003 standalone "" 11  fontscale 1.0 
set output 'fig3.tex'

fhs="../data/res/shgC.sm_0.075_xxz_576_half-slab_12-nospin_scissor_0.70_Nc_103"
fall="<paste ../data/res-layers/shgC.sm_0.075_xxz_576_1_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_2_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_3_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_4_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_5_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_6_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_7_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_8_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_9_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_10_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_11_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_12_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_13_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_14_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_15_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_16_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_17_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_18_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_19_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_20_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_21_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_22_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_23_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_24_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_25_12-nospin_scissor_0.70_Nc_103"
f24_25="<paste ../data/res-layers/shgC.sm_0.075_xxz_576_24_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_25_12-nospin_scissor_0.70_Nc_103"

# set ls 1 lc rgb 'black' lw 2 dt 1
# set zeroaxis ls 1

set border lw 2

set key bottom left Left width -7

set ylabel '\Large Im$[\chi^{xxz}](10^6\times\mathrm{pm}^2/\mathrm{V})$ '
set xlabel '\Large Two-photon energy (eV)'
set yrange [*:*]
set xrange [2.5:5]

p fhs u (2*$1):($3+$5) t '$z_{1}$ to $z_{25}$ (half-slab)' lw 5 lc rgb 'black' w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55+$58+$60+$63+$65+$68+$70+$73+$75+$78+$80+$83+$85+$88+$90+$93+$95+$98+$100+$103+$105+$108+$110+$113+$115) t '$z_{1}$ to $z_{23}$' dt 6 lw 4 lc rgb 'red' w l,\
  f24_25 u (2*$1):($3+$5+$8+$10) t '$z_{24} + z_{25}$' lw 4 dt 1 lc rgb 'blue' w l

# EOF
