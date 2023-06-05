# -*- coding: utf-8 -*-
"""
listas.py: tipos e tipagem em python

@author: Prof. Hugo de Paula
@contact: hugo@pucminas.br


"""

listaDeNumeros = [1,2,3]
print("listaDeNumeros = {0}"
      .format(listaDeNumeros)) #[1,2,3]
listaDeNumeros.append(4) #[1, 2, 3, 4]
print("listaDeNumeros.append(4) = {0}"
      .format(listaDeNumeros))
listaDeNumeros.insert(2, 55) #[1, 2, 55, 3, 4]
print("listaDeNumeros.insert(2, 55) = {0}"
      .format(listaDeNumeros))
listaDeNumeros.remove(55) #[1, 2, 3, 4]
print("listaDeNumeros.remove(55) = {0}"
      .format(listaDeNumeros))
print("listaDeNumeros.index(4) = {0}"
      .format(listaDeNumeros.index(4))) # 3
print("listaDeNumeros.count(2) = {0}"
      .format(listaDeNumeros.count(2))) # 1

print("----------------------------------")


frutas = ['banana  ', '    morango ', '  pêssego   ']

print("frutas = {0}".format(frutas))

print("frutas.strip() = {0}"
          .format([elem.strip() for elem in frutas]))

vec = [2, 4, 6]
print("vec = {0}".format(vec))

print("[3*x for x in vec] = {0}"
         .format([3*x for x in vec]))

print("[3*x for x in vec if x > 3] = {0}"
         .format([3*x for x in vec if x > 3]))

print("[3*x for x in vec if x < 2] = {0}"
         .format([3*x for x in vec if x < 2]))

print("[{x: x**2} for x in vec] = ", end='')
print([{x: x**2} for x in vec])

print("[[x, x**2] for x in vec] = ", end='')
print([[x, x**2] for x in vec])

print("[(x, x**2) for x in vec] = ", end='')
print([(x, x**2) for x in vec])

vec1 = [2, 4, 6]
vec2 = [4, 3, -9]

print("[x*y for x in vec1 for y in vec2] = ")
print([x*y for x in vec1 for y in vec2])

print("[x+y for x in vec1 for y in vec2] = ")
print([x+y for x in vec1 for y in vec2])

print("[vec1[i]*vec2[i] for i in range(len(vec1))] = ")
print([vec1[i]*vec2[i] for i in range(len(vec1))])













