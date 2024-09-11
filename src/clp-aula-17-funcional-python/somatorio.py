# -*- coding: utf-8 -*-
"""
somatorio.py: função somatorio genérica

@author: Prof. Hugo de Paula
@contact: hugo@pucminas.br

"""

def somatorio(f, inf, sup):
    total = 0
    for x in range(inf, sup+1):
        total += f(x)
    return total


print("somatorio(x**2, 1, 3) = {0}"
          .format(somatorio(lambda x: x**2, 1, 3)))

