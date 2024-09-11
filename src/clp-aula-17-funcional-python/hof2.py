# -*- coding: utf-8 -*-
"""
hof2.py: funcões de ordem superior: map, reduce, filter

@author: Prof. Hugo de Paula
@contact: hugo@pucminas.br

@version 1.0

"""
from functools import reduce

print("\n----------------------------------")
print("-----------    Map   -------------")
print("----------------------------------")
def cubo(x): return x*x*x
print("\n[*map(cubo, range(1, 11))]")
print([*map(cubo, range(1, 11))])
print("[*map(lambda x :x*x*x, range(1, 11))]")
print([*map(lambda x :x*x*x, range(1, 11))])
print("[*map(lambda x :x*x*x, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])]")
print([*map(lambda x :x*x*x, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])])

print("\n----------------------------------")
print("-----------  Filter  -------------")
print("----------------------------------")

def f(x):
  return x % 2 != 0 and x % 3 != 0

print("[*filter(f, range(2, 25))]")
print([*filter(f, range(2, 25))])

lista1 = [0, 1, 0.0, 1.0, True, False, "True", "False", "", None, [True], [False]]

def isTrue(x):
    return x
print(lista1)
print("[*filter(isTrue, lista1)]")
print([*filter(isTrue, lista1)])


# filter e map juntos
print([*map(cubo, filter(f, range(2, 25)))])

print("\n----------------------------------")
print("-----------  Reduce  -------------")
print("----------------------------------")

def soma(x, y): return x + y

print("\nreduce(soma, range(1, 11)) = ", end='')
print(reduce(soma, range(1, 11)))

minhaLista = [1, 2, 3, 4]
print("reduce((lambda x, y: x + y), minhaLista) = ", end='')
print(reduce((lambda x, y: x + y), minhaLista))
print("reduce((lambda x, y: x - y), minhaLista) = ", end='')
print(reduce((lambda x, y: x - y), minhaLista))
print("reduce((lambda x, y: x * y), minhaLista) = ", end='')
print(reduce((lambda x, y: x * y), minhaLista))
print("reduce((lambda x, y: x / y), minhaLista) = ", end='')
print(reduce((lambda x, y: x / y), minhaLista))





print("\n----------------------------------")
print("----------------------------------")

print("\n[*map(lambda x: x**2, filter(lambda x: x%2==0, range(1,10)))] = ")
print([*map(lambda x: x**2, filter(lambda x: x%2==0, range(1,10)))])
print("\n[i**2 for i in range(1,10) if i%2==0] = ")
print([i**2 for i in range(1,10) if i%2==0])

print("\n----------------------------------")
print("-----------    Zip   -------------")
print("----------------------------------")

x = [1, 2, 3]
y = [4, 5, 6]
zipped = [*zip(x, y)]

print("[*zip(x, y)] = ", end='')
print(zipped)
x2, y2 = zip(*zip(x, y))
print("x2, y2 = zip(*zip(x, y)) = ")
print(x2, y2)

print("(x == list(x2) and y == list(y2)) = ", end='')
print(x == list(x2) and y == list(y2))







