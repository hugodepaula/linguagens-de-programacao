# -*- coding: utf-8 -*-
"""
lambdafun.py: funcões lambda

@author: Prof. Hugo de Paula
@contact: hugo@pucminas.br

@version 1.0

"""

def quadrado(x):
    return x**2

# é equivalente a
quad = lambda x: x**2


def printresultado(x, funcao):
    print("{0}({1}) = {2}".format(funcao.__name__, x, funcao(x)))
    
printresultado(2, quadrado)
printresultado(3, quad)
