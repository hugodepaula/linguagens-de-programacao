# -*- coding: utf-8 -*-
"""
operadores.py: modulo Operator - Operadores na forma funcional

@author: Prof. Hugo de Paula
@contact: hugo@pucminas.br

@version 1.0

"""
import operator as op
from operator import add, mul, pow, itemgetter

print("\n----------------------------------")
print("--------  Operadores -------------")
print("----------------------------------")



print("\noperator.add(1, 2) = ", end='')
print(add(1, 2))
print("operator.mul(5, 10) = ", end='')
print(mul(5, 10))
print("operator.pow(2,5) = ", end='')
print(pow(2, 5))
print("operator.itemgetter(1)([1, 2, 3]) = ", end='')
print(itemgetter(1)([1, 2, 3]))

