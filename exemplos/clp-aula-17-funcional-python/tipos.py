# -*- coding: utf-8 -*-
"""
tipos.py: tipos e tipagem em python

@author: Prof. Hugo de Paula
@contact: hugo@pucminas.br


"""

def inc(x):
    return x+1

print(inc(5))
print(type(inc))
print(type(inc(5)))
print(type("inc(5)"))
print(type(eval ("inc(5)" )))
print(type((lambda x: x*2)))
print(type((lambda x: x*2) (4)))


def f(a, b): return (lambda x: a(x) + b(x))
def inc(x): return x + 1
def double(x): return x*2
print(f(1, 2))
#print(f("cat","dog"))
print(f(inc, double))
print(f(inc, double)(4))





