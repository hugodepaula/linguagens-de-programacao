# -*- coding: utf-8 -*-
"""
Created on Thu Nov 23 11:20:46 2017

@author: Hugo
"""
# -*- coding: utf-8 -*-
"""
Created on Thu Nov 16 11:36:37 2017

@author: Hugo
"""
from itertools import islice
from functools import partial


# Metodo de Newton-Raphson

# a(i+1) = (a(i) + n/(a(i)))/2

def prox(n, a):
    return (a + n/a)/2

def gen(f, a):
    while True:
        yield  a
        a = f(a)
 
def sel(n, tol):
    a = n
    for b in gen(partial(prox, n), n/2):
        if (abs(a-b) <= tol):
            return b
        a = b

def raiz(n):
    return sel(n, 0.000001)








