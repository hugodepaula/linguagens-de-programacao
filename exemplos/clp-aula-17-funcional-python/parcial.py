# -*- coding: utf-8 -*-
"""
parcial.py: avaliação parcial

@author: Prof. Hugo de Paula
@contact: hugo@pucminas.br


"""
from functools import partial


print("----------------------------------")
print("-----------  Parcial -------------")
print("----------------------------------")

def soma(a, b):
    return a + b

inc = partial(soma, 1)
print("inc = partial(soma, 1) (4) = {0}".format(inc(4)))

def multiplica(a, b):
    return a * b

dobro = partial(multiplica, 2)

print("dobro = partial(multiplica, 2) (4) = {0}".format(dobro(4)))


print("\n----------------------------------")
print("-----------   Debug  -------------")
print("----------------------------------")


def log(nivel, texto):
    print("[{nivel}]: {msg}"
          .format(nivel=nivel, msg=texto))	

depurar = partial(log, "debug")

depurar("Início da tarefa.")
depurar("Continuação da tarefa")
depurar("Tarefa encerrada. Resultado.")





