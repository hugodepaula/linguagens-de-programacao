# -*- coding: utf-8 -*-
"""
Created on Mon Nov  6 07:36:39 2017

@author: Hugo
"""

def cosseno(x):
    def cosrec(x, n, num, den, res):
        if (n == 3):
            return (res + num/den)
        else:
            return cosrec(x, n+1, (-1)*x*x*num, (2*n)*(2*n-1)*den, res + num/den)
    return cosrec(x, 1, 1, 1, 0)

print("Cosseno(1) = {0}".format(cosseno(1))) # 0.54
