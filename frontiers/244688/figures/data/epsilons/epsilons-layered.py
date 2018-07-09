import numpy as np
from scipy import constants

fullrange = list(range(1,26))

for upper in fullrange:
    total = 0
    for i in list(range(1,upper+1)):
        file = 'res-chi1_layered/calChi1.sm_0.075_xx_yy_zz_576_' + str(i) + '_12-nospin_scissor_0.70_Nc_103'
        data = np.loadtxt(file, unpack=True, skiprows=1)
        real = (data[1] + data[3] + data[5])/3      # real average
        imag = (data[2] + data[4] + data[6])/3      # imag average
        coma = real + 1j * imag                     # complex average
        total += coma
        
    epsa = 1 + (4 * constants.pi * total * 1.2659296143) # epsilon with normalization
    
    MAXE = 2000
    freq = np.linspace(0.01, float(MAXE)/100, MAXE)    
    
    data = np.c_[freq, epsa.real, epsa.imag]
    np.savetxt('epsilons-01-{0:02d}.dat'.format(upper), data, fmt=('%05.2f', '%.14e', '%.14e'), delimiter='    ')
