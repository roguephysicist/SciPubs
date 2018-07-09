## metapost
#set term mp color latex magnification 1
set term mp color solid latex magnification 1
set out 'fig.mp'
set size 1,1

f1='../data/res-layers/shgC.sm_0.075_xxz_576_1_12-nospin_scissor_0.70_Nc_103'

set ylabel '\Large Im$[\chi^{\mathrm{xxz}}](10^6\times\mathrm{pm}^2/\mathrm{V})$ '
set xlabel '\Large Two-photon energy (eV)'
#set yrange [0:2]
set xrange [2.5:5]
#set key at 3.7,1.9

p f1 u (2*$1):($3+$5) t 'H ($z_1$)' w l,\
  "<paste ../data/res-layers/shgC.sm_0.075_xxz_576_2_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_3_12-nospin_scissor_0.70_Nc_103" u (2*$1):($3+$5+$8+$10) t 'Si ($z_{2} + z_{3}$)' w l,\
  "<paste ../data/res-layers/shgC.sm_0.075_xxz_576_24_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_25_12-nospin_scissor_0.70_Nc_103" u (2*$1):($3+$5+$8+$10) t 'Si ($z_{24} + z_{25}$)' w l
#  "<paste ../data/res-layers/shgC.sm_0.075_xxz_576_12_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_13_12-nospin_scissor_0.70_Nc_103" u (2*$1):($3+$5+$8+$10) t 'Layers 12 + 13' w l,\

#p f1 u (2*$1):(sqrt(($2+$4)**2 + ($3+$5)**2)) t 'Layer 1' w l,\
#  "<paste ../data/res-layers/shgC.sm_0.075_xxz_576_2_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_3_12-nospin_scissor_0.70_Nc_103" u (2*$1):(sqrt(($2+$4+$7+$9)**2 + ($3+$5+$8+$10)**2)) t 'Layers 2 + 3' w l,\
#  "<paste ../data/res-layers/shgC.sm_0.075_xxz_576_12_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_13_12-nospin_scissor_0.70_Nc_103" u (2*$1):(sqrt(($2+$4+$7+$9)**2 + ($3+$5+$8+$10)**2)) t 'Layers 12 + 13' w l,\
#  "<paste ../data/res-layers/shgC.sm_0.075_xxz_576_24_12-nospin_scissor_0.70_Nc_103 ../data/res-layers/shgC.sm_0.075_xxz_576_25_12-nospin_scissor_0.70_Nc_103" u (2*$1):(sqrt(($2+$4+$7+$9)**2 + ($3+$5+$8+$10)**2)) t 'Layers 24 + 25' w l



