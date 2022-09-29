
def mat(p = None):
    import scipy.io
    import numpy as np
    val = scipy.io.loadmat('/home/simon/Documents/MATLAB/toeplitzlda/param.mat')

    a = np.squeeze(val['a'])
    p = np.squeeze(p)

    if p is not None:
        d = a - p
        e = np.divide(d,p)*100
        e = np.sum(e)
        print("e : %.20f%%" %e)

    return a