set term mp color dashed amstex magnification 1
set output 'metapost.mp'

abso(w,x,y,z)=(sqrt((w+y)**2+(x+z)**2))

set key at 3.3,1.9
set xrange [2.5:5]
set yrange [0:2]
set xlabel '{\Large Two-photon energy (eV)}'
set ylabel '{\Large $\mathcal{R}_{pP}\, (10^{-20} \times \mathrm{cm}^{2}/\mathrm{W})$}'
set label '\large Theoretical spectra $\times$ 0.5' at 2.75,1
set label '\large $E_{1}$' at 3.325,0.15
set label '\large $E_{2}$' at 4.2,0.15
p "source/data/Rif-Mejia.MR.10nm_10nm.vnl.scissor0.70.3-layer.dat" u (2*$1):($2*0.5) t '$d_{2} = 10\,\mathrm{nm}$' w l dt 4 lw 2.0 lc rgb "red",\
  "source/data/Rif-Mejia.MR.avg_10nm.vnl.scissor0.70.3-layer.dat"  u (2*$1):($2*0.5) t 'Average' w l dt 1 lw 2.5 lc rgb "blue",\
  "source/data/Rif-Mejia.MR.00nm_10nm.vnl.scissor0.70.3-layer.dat" u (2*$1):($2*0.5) t '$d_{2} = 0\,\mathrm{nm}$' w l dt 3 lw 2.0 lc rgb "dark-spring-green",\
  "source/data/Rif-Mejia.vnl.scissor0.70.3-layer.dat" u (2*$1):($2*0.5) t 'w/o MR' w l lw 1.5 dt 1 lc rgb "black",\
  "source/data/mejiaPRB02_bergfeldPRL04.dat" u 1:($2/100) t 'Experiment' w p pt 2 ps 1 lw 1.0 lc rgb "black"

unset label
unset arrow

set key at 3.2,0.38
set xrange [2.4:5]
set yrange [0:0.4]
set xtics auto
set ytics 0.1
set label '\large $E_{1}$' at 3.425,0.03
set label '\large $E_{2}$' at 4.3,0.03
set ylabel '{\Large $\mathcal{R}_{pS}\, (10^{-20} \times \mathrm{cm}^{2}/\mathrm{W})$}'
p "source/data/Rif-Mejia.MR.avg_10nm.vnl.scissor0.70.3-layer.dat"      u (2*$1):3 t 'with MR'       dt 1 lw 2.5 lc rgb "blue" w l,\
  "source/data/Rif-Mejia.MR_no1w.avg_10nm.vnl.scissor0.70.3-layer.dat" u (2*$1):3 t 'w/o $1\omega$' dt 2 lw 2.0 lc rgb "dark-spring-green" w l,\
  "source/data/Rif-Mejia.MR_no2w.avg_10nm.vnl.scissor0.70.3-layer.dat" u (2*$1):3 t 'w/o $2\omega$' dt 1 lw 1.5 lc rgb "black" w l,\
  "source/data/Rif-Mejia.vnl.scissor0.70.3-layer.dat"                  u (2*$1):3 t 'w/o MR'        dt 4 lw 2.0 lc rgb "red" w l,\
  "source/data/mejiaPRB02_bergfeldPRL04.dat" u 1:($3/100) t 'Experiment' pt 2 ps 1 lw 1.0 lc rgb "black" w p
 
unset label
unset arrow

set multiplot
set key at 3.3,0.03
set xrange [2.5:5]
set yrange [0:0.08]
set xtics auto
set ytics 0.02
set label '\large $E_{1}$' at 3.6,0.005
set label '\large $E_{2}$' at 4.25,0.005
set origin 0,0
set ylabel '{\Large $\mathcal{R}_{sP}\, (10^{-20} \times \mathrm{cm}^{2}/\mathrm{W})$}'
p "source/data/Rif-Mejia.MR.avg_10nm.vnl.scissor0.70.3-layer.dat" u (2*$1):4 t 'with MR' dt 1 lw 2.0 lc rgb "blue" w l,\
  "source/data/Rif-Mejia.vnl.scissor0.70.3-layer.dat"             u (2*$1):4 t 'w/o MR'  dt 4 lw 2.0 lc rgb "red" w l,\
  "source/data/mejiaPRB02_bergfeldPRL04.dat" u 1:($4/100) t 'Experiment' pt 2 ps 1 lw 1.0 lc rgb "black" w p

unset label
set label '$\omega^{2}\Gamma_{sP}R^{M+}_{p}$'  at screen 0.27,0.80
set origin 0.15,0.55
set size 0.4,0.4
set yrange [*:*]
unset ytics
set xtics format '{\footnotesize $%g$}'
set format y ''
unset ylabel
unset xlabel
unset key
p "source/data/prefactor-mr_yes.dat" u (2*$1):4 dt 1 lw 2.0 lc rgb "blue" w l,\
  "source/data/prefactor-mr_no.dat" u (2*$1):4  dt 4 lw 2.0 lc rgb "red" w l
unset multiplot

unset label
unset arrow
unset size
unset origin
set format x
set format y

set multiplot
set origin 0,1.05
set size 1,1
set key at 4.9,29
set xrange [0:5]
set yrange [0:30]
set xtics auto
set ytics auto
# set xlabel '{\Large Two-photon energy (eV)}'
set ylabel '{\Large $\mathcal{R}_{pS}\, (10^{-20} \times \mathrm{cm}^{2}/\mathrm{W})$}'
p "source/data/Rif.MR.scissor0.50.theta10.phi90.dat" u (2*$1):3 t 'with MR' dt 1 lw 2.0 lc rgb "blue" w l,\
  "source/data/Rif.scissor0.50.theta10.phi90.dat"    u (2*$1):3 t 'w/o MR'  dt 4 lw 2.0 lc rgb "red" w l

set key at 4.9,3.4 Left
set origin 0,0
set size 1,1.06
set xrange [0:5]
set yrange [-0.1:*]
set xtics auto
set ytics auto
set xlabel '{\Large Two-photon energy (eV)}'
set ylabel '{\Large $\vert\chi^{\mathrm{abc}}\vert\,(10^{6} \times \mathrm{pm}^{2}/\mathrm{V})$}'
p "source/data/Si2x1-halfslab/shgC.vnl.sm_0.075_xyy_244_half-slab_10-nospin_scissor_0.50_Nc_130" u (2*$1):(abso($2,$3,$4,$5)) t '$xyy$' dt 1 lw 2.0 lc rgb "black" w l,\
  "source/data/Si2x1-halfslab/shgC.vnl.sm_0.075_xzz_244_half-slab_10-nospin_scissor_0.50_Nc_130" u (2*$1):(abso($2,$3,$4,$5)) t '$xzz$' dt 4 lw 2.0 lc rgb "dark-spring-green" w l,\
  "source/data/Si2x1-halfslab/shgC.vnl.sm_0.075_xzy_244_half-slab_10-nospin_scissor_0.50_Nc_130" u (2*$1):(abso($2,$3,$4,$5)) t '$xzy$' dt 5 lw 2.0 lc rgb "dark-goldenrod" w l
unset multiplot

unset label
unset arrow
unset size
unset origin
set format x
set format y

set key at 4.9,3.7 Left
set xrange [0:5]
set yrange [*:*]
set xtics auto
set ytics auto
set xlabel '{\Large Two-photon energy (eV)}'
set ylabel '{\Large Im$[\chi^{xyy}]\,(10^{6} \times \mathrm{pm}^{2}/\mathrm{V})$}'
p "source/data/Si2x1-halfslab/shgC.vnl.sm_0.075_xyy_244_half-slab_10-nospin_scissor_0.50_Nc_130" u (2*$1):($3+$5) t 'half-slab' dt 1 lw 2.0 lc rgb "black" w l,\
  "<paste source/data/Si2x1-layers/shgC.sm_0.075_xyy_244_1_10-nospin_scissor_0.50_Nc_130 source/data/Si2x1-layers/shgC.sm_0.075_xyy_244_2_10-nospin_scissor_0.50_Nc_130 source/data/Si2x1-layers/shgC.sm_0.075_xyy_244_3_10-nospin_scissor_0.50_Nc_130 source/data/Si2x1-layers/shgC.sm_0.075_xyy_244_4_10-nospin_scissor_0.50_Nc_130 source/data/Si2x1-layers/shgC.sm_0.075_xyy_244_5_10-nospin_scissor_0.50_Nc_130 source/data/Si2x1-layers/shgC.sm_0.075_xyy_244_6_10-nospin_scissor_0.50_Nc_130 source/data/Si2x1-layers/shgC.sm_0.075_xyy_244_7_10-nospin_scissor_0.50_Nc_130 source/data/Si2x1-layers/shgC.sm_0.075_xyy_244_8_10-nospin_scissor_0.50_Nc_130" u (2*$1):(0.84*($3+$5+$8+$10+$13+$15+$18+$20+$23+$25+$28+$30+$33+$35+$38+$40)) t 'Sum Layers 1-8' dt 6 lw 2.0 lc rgb "red" w l,\
  "source/data/Si2x1-layers/shgC.sm_0.075_xyy_244_1_10-nospin_scissor_0.50_Nc_130" u (2*$1):(0.84*($3+$5)) t 'Layer 1 (Dimers)' dt 1 lw 1.5 lc rgb "blue" w l,\
  "source/data/Si2x1-layers/shgC.sm_0.075_xyy_244_2_10-nospin_scissor_0.50_Nc_130" u (2*$1):(0.84*($3+$5)) t 'Layer 2' dt 5 lw 2.0 lc rgb "dark-spring-green" w l,\
  "source/data/Si2x1-layers/shgC.sm_0.075_xyy_244_3_10-nospin_scissor_0.50_Nc_130" u (2*$1):(0.84*($3+$5)) t 'Layer 3' dt 2 lw 2.0 lc rgb "dark-goldenrod" w l
  # "source/data/Si2x1-layers/shgC.sm_0.075_xyy_244_4_10-nospin_scissor_0.50_Nc_130" u (2*$1):($3+$5) t 'layer 4' dt 1 lw 2.0 lc rgb "green" w l
