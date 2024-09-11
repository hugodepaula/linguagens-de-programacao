# -*- coding: utf-8 -*-
"""
caudafat.py: recursividade de cauda em Python

@author: Prof. Hugo de Paula
@contact: hugo@pucminas.br

"""
import timeit


def fatrec(n):
    if (n == 0):
        return 1
    else:
        return n * fatrec(n - 1)


def fat(n):
    def caudafat(n, a):
        if (n == 0):
            return a
        else:
            return caudafat(n - 1, n * a)
    return caudafat(n, 1)

start = timeit.default_timer()
print("fat(10) = ",format(fat(1000)))
stop = timeit.default_timer()
print('Tempo fat: ', stop - start) 


start = timeit.default_timer()
print("fatrec(10) = ",format(fatrec(1000)))
stop = timeit.default_timer()
print('Tempo fat: ', stop - start) 













