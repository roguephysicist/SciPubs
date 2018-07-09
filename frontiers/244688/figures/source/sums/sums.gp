## metapost
set terminal epslatex leveldefault color blacktext dashlength 1.0 linewidth 1.0 butt noclip nobackground palfuncparam 2000,0.003 standalone "" 11  fontscale 1.0 
# set term mp color dashed latex magnification 1
# set out 'fig.mp'
set size 1,1

set zeroaxis lw 2
set key bottom right

set ylabel '\Large Im$[\chi^{xxz}](10^6\times\mathrm{pm}^2/\mathrm{V})$ '
set xlabel '\Large Two-photon energy (eV)'
set yrange [-1:2.5]
set xrange [2:12]

f01='../../data/res-layers/shgC.sm_0.075_xxz_576_1_12-nospin_scissor_0.70_Nc_103'
f02_03="<paste ../../data/res-layers/shgC.sm_0.075_xxz_576_2_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_3_12-nospin_scissor_0.70_Nc_103"
f04_05="<paste ../../data/res-layers/shgC.sm_0.075_xxz_576_4_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_5_12-nospin_scissor_0.70_Nc_103"
f06_07="<paste ../../data/res-layers/shgC.sm_0.075_xxz_576_6_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_7_12-nospin_scissor_0.70_Nc_103"
f08_09="<paste ../../data/res-layers/shgC.sm_0.075_xxz_576_8_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_9_12-nospin_scissor_0.70_Nc_103"
f10_11="<paste ../../data/res-layers/shgC.sm_0.075_xxz_576_10_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_11_12-nospin_scissor_0.70_Nc_103"
f12_13="<paste ../../data/res-layers/shgC.sm_0.075_xxz_576_12_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_13_12-nospin_scissor_0.70_Nc_103"
f14_15="<paste ../../data/res-layers/shgC.sm_0.075_xxz_576_14_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_15_12-nospin_scissor_0.70_Nc_103"
f16_17="<paste ../../data/res-layers/shgC.sm_0.075_xxz_576_16_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_17_12-nospin_scissor_0.70_Nc_103"
f18_19="<paste ../../data/res-layers/shgC.sm_0.075_xxz_576_18_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_19_12-nospin_scissor_0.70_Nc_103"
f20_21="<paste ../../data/res-layers/shgC.sm_0.075_xxz_576_20_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_21_12-nospin_scissor_0.70_Nc_103"
f22_23="<paste ../../data/res-layers/shgC.sm_0.075_xxz_576_22_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_23_12-nospin_scissor_0.70_Nc_103"
f24_25="<paste ../../data/res-layers/shgC.sm_0.075_xxz_576_24_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_25_12-nospin_scissor_0.70_Nc_103"
fall="<paste ../../data/res-layers/shgC.sm_0.075_xxz_576_1_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_2_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_3_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_4_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_5_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_6_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_7_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_8_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_9_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_10_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_11_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_12_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_13_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_14_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_15_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_16_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_17_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_18_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_19_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_20_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_21_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_22_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_23_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_24_12-nospin_scissor_0.70_Nc_103 ../../data/res-layers/shgC.sm_0.075_xxz_576_25_12-nospin_scissor_0.70_Nc_103"
fhs="../../data/res/shgC.sm_0.075_xxz_576_half-slab_12-nospin_scissor_0.70_Nc_103"

set output 'layer_sum-f01.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  f01 u (2*$1):($3+$5) t 'H ($z_1$)' lw 3 dt 4 w l
set output 'layer_sum-f02_03.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  f02_03 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{02} + z_{03}$)' lw 3 dt 4 w l
set output 'layer_sum-f04_05.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  f04_05 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{04} + z_{05}$)' lw 3 dt 4 w l
set output 'layer_sum-f06_07.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  f06_07 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{06} + z_{07}$)' lw 3 dt 4 w l
set output 'layer_sum-f08_09.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  f08_09 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{08} + z_{09}$)' lw 3 dt 4 w l
set output 'layer_sum-f10_11.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  f10_11 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{10} + z_{11}$)' lw 3 dt 4 w l
set output 'layer_sum-f12_13.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  f12_13 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{12} + z_{13}$)' lw 3 dt 4 w l
set output 'layer_sum-f14_15.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  f14_15 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{14} + z_{15}$)' lw 3 dt 4 w l
set output 'layer_sum-f16_17.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  f16_17 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{16} + z_{17}$)' lw 3 dt 4 w l
set output 'layer_sum-f18_19.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  f18_19 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{18} + z_{19}$)' lw 3 dt 4 w l
set output 'layer_sum-f20_21.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  f20_21 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{20} + z_{21}$)' lw 3 dt 4 w l
set output 'layer_sum-f22_23.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  f22_23 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{22} + z_{23}$)' lw 3 dt 4 w l
set output 'layer_sum-f24_25.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  f24_25 u (2*$1):($3+$5+$8+$10) t 'Si ($z_{24} + z_{25}$)' lw 3 dt 4 w l


set output 'hs_sum-f01_25.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55+$58+$60+$63+$65+$68+$70+$73+$75+$78+$80+$83+$85+$88+$90+$93+$95+$98+$100+$103+$105+$108+$110+$113+$115+$118+$120+$123+$125) t 'H $(z_{1})$ + Si $(z_{02-25})$' dt 4 lw 3 w l
set output 'hs_sum-f01_24.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55+$58+$60+$63+$65+$68+$70+$73+$75+$78+$80+$83+$85+$88+$90+$93+$95+$98+$100+$103+$105+$108+$110+$113+$115+$118+$120) t 'H $(z_{1})$ + Si $(z_{02-24})$' dt 4 lw 3 w l
set output 'hs_sum-f01_23.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55+$58+$60+$63+$65+$68+$70+$73+$75+$78+$80+$83+$85+$88+$90+$93+$95+$98+$100+$103+$105+$108+$110+$113+$115) t 'H $(z_{1})$ + Si $(z_{02-23})$' dt 4 lw 3 w l
set output 'hs_sum-f01_22.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55+$58+$60+$63+$65+$68+$70+$73+$75+$78+$80+$83+$85+$88+$90+$93+$95+$98+$100+$103+$105+$108+$110) t 'H $(z_{1})$ + Si $(z_{02-22})$' dt 4 lw 3 w l
set output 'hs_sum-f01_21.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55+$58+$60+$63+$65+$68+$70+$73+$75+$78+$80+$83+$85+$88+$90+$93+$95+$98+$100+$103+$105) t 'H $(z_{1})$ + Si $(z_{02-21})$' dt 4 lw 3 w l
set output 'hs_sum-f01_20.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55+$58+$60+$63+$65+$68+$70+$73+$75+$78+$80+$83+$85+$88+$90+$93+$95+$98+$100) t 'H $(z_{1})$ + Si $(z_{02-20})$' dt 4 lw 3 w l
set output 'hs_sum-f01_19.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55+$58+$60+$63+$65+$68+$70+$73+$75+$78+$80+$83+$85+$88+$90+$93+$95) t 'H $(z_{1})$ + Si $(z_{02-19})$' dt 4 lw 3 w l
set output 'hs_sum-f01_18.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55+$58+$60+$63+$65+$68+$70+$73+$75+$78+$80+$83+$85+$88+$90) t 'H $(z_{1})$ + Si $(z_{02-18})$' dt 4 lw 3 w l
set output 'hs_sum-f01_17.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55+$58+$60+$63+$65+$68+$70+$73+$75+$78+$80+$83+$85) t 'H $(z_{1})$ + Si $(z_{02-17})$' dt 4 lw 3 w l
set output 'hs_sum-f01_16.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55+$58+$60+$63+$65+$68+$70+$73+$75+$78+$80) t 'H $(z_{1})$ + Si $(z_{02-16})$' dt 4 lw 3 w l
set output 'hs_sum-f01_15.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55+$58+$60+$63+$65+$68+$70+$73+$75) t 'H $(z_{1})$ + Si $(z_{02-15})$' dt 4 lw 3 w l
set output 'hs_sum-f01_14.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55+$58+$60+$63+$65+$68+$70) t 'H $(z_{1})$ + Si $(z_{02-14})$' dt 4 lw 3 w l
set output 'hs_sum-f01_13.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55+$58+$60+$63+$65) t 'H $(z_{1})$ + Si $(z_{02-13})$' dt 4 lw 3 w l
set output 'hs_sum-f01_12.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55+$58+$60) t 'H $(z_{1})$ + Si $(z_{02-12})$' dt 4 lw 3 w l
set output 'hs_sum-f01_11.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50+$53+$55) t 'H $(z_{1})$ + Si $(z_{02-11})$' dt 4 lw 3 w l
set output 'hs_sum-f01_10.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45+$48+$50) t 'H $(z_{1})$ + Si $(z_{02-10})$' dt 4 lw 3 w l
set output 'hs_sum-f01_09.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40+$43+$45) t 'H $(z_{1})$ + Si $(z_{02-09})$' dt 4 lw 3 w l
set output 'hs_sum-f01_08.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40) t 'H $(z_{1})$ + Si $(z_{02-08})$' dt 4 lw 3 w l
set output 'hs_sum-f01_07.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35) t 'H $(z_{1})$ + Si $(z_{02-07})$' dt 4 lw 3 w l
set output 'hs_sum-f01_06.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30) t 'H $(z_{1})$ + Si $(z_{02-06})$' dt 4 lw 3 w l
set output 'hs_sum-f01_05.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20+$23+$25) t 'H $(z_{1})$ + Si $(z_{02-05})$' dt 4 lw 3 w l
set output 'hs_sum-f01_04.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15+$18+$20) t 'H $(z_{1})$ + Si $(z_{02-04})$' dt 4 lw 3 w l
set output 'hs_sum-f01_03.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10+$13+$15) t 'H $(z_{1})$ + Si $(z_{02-03})$' dt 4 lw 3 w l
set output 'hs_sum-f01_02.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5+$8+$10) t 'H $(z_{1})$ + Si $(z_{02})$' dt 4 lw 3 w l
set output 'hs_sum-f01_01.tex'
p fhs u (2*$1):($3+$5) t 'Half-Slab' lw 3 w l,\
  fall u (2*$1):($3+$5) t 'H $(z_{1})$' dt 4 lw 3 w l
