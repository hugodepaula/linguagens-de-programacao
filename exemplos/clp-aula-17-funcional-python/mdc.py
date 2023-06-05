# -*- coding: utf-8 -*-
"""
mdc.py: Algoritmo de Euclides para o cálculo do máximo divisor comum

@author: Prof. Hugo de Paula
@contact: hugo@pucminas.br

@version 1.0

"""

def mdc(m, n):
    if (m == 0):
        return n
    else:
        return mdc(n % m, m)
        

print("mdc(20, 30) = {0}".format(mdc(20, 30)))
