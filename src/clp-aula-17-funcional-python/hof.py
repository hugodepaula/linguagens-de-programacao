# -*- coding: utf-8 -*-
"""
hof.py: funcões de ordem superior

@author: Prof. Hugo de Paula
@contact: hugo@pucminas.br



"""

# Recebe uma função como parâmetro e avalia esta função
def avaliar(f, x): 
    return f(x)

# retorna uma função
# note que retorna result, e não result()
def linear(a, b):
    def funcao(x):
        return a*x + b
    return funcao # não é result()

minhaFuncaoLinear = linear(-2, 5)
# faz a função -2x + 5

print("minhaFuncaoLinear = linear(-2, 5)\nminhaFuncaoLinear(2) = {}"
         .format(minhaFuncaoLinear(2)))

#avalia a função no ponto 8
print("linear(4, 3)(8) = {}"
         .format(linear(4, 3)(8)))

print("\n--------------------------------------\n")
def composicaoVal(f, g, x):
   return f(g(x))


def composicaoFun(f, g):
    def h(x):
       return f(g(x))
    return h

# -2 (3x + 4) + 5 = -6x -8 + 5 = -6x - 3
print("novaFun composicaoFun(linear(-2, 5), linear(3, 4)) = ")
novaFun = composicaoFun(linear(-2, 5), linear(3, 4))
print(novaFun(4))

print((lambda x, y : composicaoFun(x, y))   
                     (linear(-2, 5), linear(3, 4))(4))


print("\n--------------------------------------\n")

# retorna o máximo de dois valores
def maxVal(x, y): 
    if (x > y): 
        return x
    else:
        return y 

# retorna o máximo de duas funções num ponto
def maxFunVal(f, g, x): 
    return maxVal(f(x), g(x))

print("maxFunVal(linear(3, 6), linear(5, -8), 10) = {0}"
         .format(maxFunVal(linear(3, 6), linear(5, -8), 10)))
# f(x) = 3x10 + 6 = 36          g(x)= 5x10 -8 = 42

f = lambda x: x + 2
g = lambda x: 6
print("maxFunVal(lambda x: x + 2, lambda x: 6, 3) = {0}"
         .format(maxFunVal(f, g, 3)))



# retorna o máximo de dois valores
def maxFun(f, g):
    def funcaoMax(x):
        return maxVal(f(x), g(x))
    return funcaoMax

funcaoMaxima = maxFun(linear(2, 4), linear(3, -2))

print("maxFun(linear(2, 4), linear(3, -2)) (3) = {0}"
         .format(funcaoMaxima(3)))

print("[funcaoMaxima(x) for x in range(1,10)] = ")
print([funcaoMaxima(x) for x in range(1,10)])





